import 'dart:io';

void main() async {
  final file = File('C:/Users/HomePC/WORK/monie/mrmonei_api_endpoints.md');
  final lines = await file.readAsLines();

  String currentSection = '';
  List<String> endpoints = [];
  Map<String, List<Map<String, String>>> parsedApis = {};

  final headerRegex = RegExp(r'^## (\d+\.\s+)?(.*)');
  final endpointRegex = RegExp(r'^### (GET|POST|PUT|PATCH|DELETE) (.*)');

  for (int i = 0; i < lines.length; i++) {
    final line = lines[i];

    final headerMatch = headerRegex.firstMatch(line);
    if (headerMatch != null) {
      currentSection = headerMatch.group(2)!.trim();
      currentSection = currentSection.replaceAll(RegExp(r'—.*'), '').trim();
      currentSection = currentSection.replaceAll(RegExp(r'\(.*\)'), '').trim();
      if (!parsedApis.containsKey(currentSection) &&
          currentSection.isNotEmpty) {
        parsedApis[currentSection] = [];
      }
      continue;
    }

    final endpointMatch = endpointRegex.firstMatch(line);
    if (endpointMatch != null && parsedApis.containsKey(currentSection)) {
      final method = endpointMatch.group(1)!;
      final path = endpointMatch.group(2)!.trim();

      // Get the name/description from the next line
      String description = "Endpoint";
      if (i + 1 < lines.length && lines[i + 1].startsWith('**')) {
        description = lines[i + 1].replaceAll('**', '').trim();
      }

      parsedApis[currentSection]!.add({
        'method': method,
        'path': path,
        'description': description,
      });
    }
  }

  // Generate dart files
  for (final entry in parsedApis.entries) {
    if (entry.key.isEmpty || entry.value.isEmpty) continue;

    String sectionName = entry.key
        .split(' ')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .map((e) => e[0].toUpperCase() + e.substring(1).toLowerCase())
        .join('');

    // Clean up name
    sectionName = sectionName.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    if (sectionName.toLowerCase() == 'implementationnotes' ||
        sectionName.toLowerCase() == 'legacyendpoints')
      continue;

    String fileName = entry.key
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
        .replaceAll(RegExp(r'^_+|_+$'), '');
    if (fileName.isEmpty) continue;

    final code = StringBuffer();
    code.writeln("import 'package:chopper/chopper.dart';");
    code.writeln();
    code.writeln("part '${fileName}_api.chopper.dart';");
    code.writeln();
    code.writeln("@ChopperApi()");
    code.writeln(
      "abstract class ${sectionName}ApiService extends ChopperService {",
    );
    code.writeln(
      "  static ${sectionName}ApiService create([ChopperClient? client]) =>",
    );
    code.writeln("      _\$${sectionName}ApiService(client);");

    for (var ep in entry.value) {
      final method = ep['method']!;
      final path = ep['path']!;
      final desc = ep['description']!;

      final dartMethod = method.toUpperCase();

      // Extract path params
      final pathParamsRegex = RegExp(r'\{([^\}]+)\}');
      final pathParamsMatches = pathParamsRegex.allMatches(path);

      List<String> argsList = [];
      for (var match in pathParamsMatches) {
        final paramName = match.group(1)!;
        argsList.add("@Path('$paramName') String $paramName");
      }

      if (method == 'POST' || method == 'PUT' || method == 'PATCH') {
        argsList.add("@Body() Map<String, dynamic> body");
      }

      String args = argsList.join(', ');

      String funcName = desc
          .toLowerCase()
          .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
          .trim()
          .split(' ')
          .map((e) => e.isEmpty ? '' : e[0].toUpperCase() + e.substring(1))
          .join('');
      if (funcName.isEmpty) {
        funcName = "callEndpoint";
      }
      funcName = funcName[0].toLowerCase() + funcName.substring(1);

      code.writeln();
      code.writeln("  /// $desc");
      code.writeln("  @$dartMethod(path: '$path')");
      code.writeln("  Future<Response> $funcName($args);");
    }

    code.writeln("}");

    final outFile = File(
      'C:/Users/HomePC/WORK/monie/lib/data/api/${fileName}_api.dart',
    );
    await outFile.writeAsString(code.toString());
    print("Created $fileName\_api.dart");
  }
}
