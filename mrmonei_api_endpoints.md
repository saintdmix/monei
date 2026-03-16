# Mr. Monei API — Complete Endpoint Reference (Client-Side)

**Base URL:** `http://localhost:3001` (dev) — replace with production URL when deploying  
**Auth:** Bearer token in `Authorization` header after login  
**Standard Response Shape:**
```json
{
  "statusCode": 0,
  "message": "string",
  "data": {},
  "errors": {}
}
```

---

## 1. AUTH

### GET /api/v1/auth/check-exists/{phone}
**Check if user exists**  
Path param: `phone` (string)  
Use before registration to check if a phone number already has an account.

### POST /api/v1/auth/auth/login
**Login a user**  
Authenticate an existing user and receive an access token.

### POST /api/v1/auth/auth/register
**Register a user**  
Create a new user account.

### POST /api/v1/auth/send-verification-email/{email}
**Send verification email**  
Triggers a verification email to the given address.  
Path param: `email`

### POST /api/v1/auth/verify/{token}/{email}
**Verify user email**  
Confirms email ownership using a token sent by email.  
Path params: `token`, `email`

### POST /api/v1/auth/request-reset-pin/{email}
**Request PIN reset**  
Sends a PIN reset email to the user.  
Path param: `email`

### POST /api/v1/auth/reset-pin
**Reset user PIN**  
Resets the user's login PIN using a reset token.

### PUT /api/v1/auth/change-pin
**Change user PIN**  
Allows a logged-in user to change their current PIN.

### PUT /api/v1/auth/set-transaction-pin
**Set transaction PIN**  
Sets the user's 4/6-digit transaction authorization PIN for the first time.

### PUT /api/v1/auth/change-transaction-pin
**Change transaction PIN**  
Updates an existing transaction PIN.

### PUT /api/v1/auth/update-email
**Update user email**  
Changes the email address on a user's account.

### PUT /api/v1/auth/reset-transaction-pin
**Reset transaction PIN**  
Resets a forgotten transaction PIN.

---

## 2. ONBOARDING

### GET /api/v1/onboarding/google
**Google OAuth redirect**  
Redirects user to Google OAuth flow for social sign-in/sign-up.

### POST /api/v1/onboarding/request-signup
**Request email signup**  
Initiates email-based signup, sending an OTP or verification link.

### POST /api/v1/onboarding/verify-email-otp
**Verify email OTP**  
Validates the OTP sent during email signup.

### PUT /api/v1/onboarding/complete-profile
**Complete user profile**  
Submits remaining profile info (name, DOB, etc.) to complete onboarding.

### POST /api/v1/onboarding/phone/send-otp
**Send phone OTP**  
Sends an OTP to a phone number for verification.

### POST /api/v1/onboarding/phone/verify-otp
**Verify phone OTP**  
Confirms the OTP received on the user's phone.

### GET /api/v1/onboarding/onboarding-status
**Get onboarding status**  
Returns which onboarding steps the user has completed and what's pending.

---

## 3. ACCOUNT INFORMATION

### GET /api/v1/user/me
**Get current user**  
Returns the authenticated user's full profile data.

### PATCH /api/v1/user/update
**Update user profile**  
Partially updates user profile fields (name, avatar, preferences, etc.).

---

## 4. KYC VERIFICATION

### GET /api/v1/kyc/status
**Get KYC status**  
Returns the user's current KYC tier and the limits associated with it.

### POST /api/v1/kyc/submit-nin
**Submit NIN (Tier 2)**  
Submits the user's National Identification Number to upgrade to Tier 2.

### POST /api/v1/kyc/submit-bvn
**Submit BVN (Tier 3)**  
Submits the user's Bank Verification Number to upgrade to Tier 3.

### POST /api/v1/kyc/upload-document
**Upload KYC document**  
Uploads a supporting document (ID card, passport, etc.) for KYC verification.

### POST /api/v1/kyc/check-eligibility
**Check tier upgrade eligibility**  
Checks if the user qualifies to move to the next KYC tier.

### GET /api/v1/kyc/limits
**Get tier transaction limits**  
Returns the deposit, withdrawal, and transfer limits for the user's current tier.

---

## 5. WALLET — ACCOUNT

### GET /api/v1/wallet/me
**Get wallet + crypto portfolio**  
Returns naira wallet balance along with crypto holdings summary.

### GET /api/v1/wallet/naira-wallet
**Get naira wallet**  
Returns the user's NGN wallet balance and details.

### POST /api/v1/wallet/virtual-account
**Create virtual account**  
Creates a permanent virtual bank account (for receiving NGN transfers).

---

## 6. WALLET — DEPOSITS

### POST /api/v1/wallet/deposit
**Initiate a deposit**  
Start a deposit via Card, Bank Transfer, or USSD.  
Body: `{ amount, method: "card" | "transfer" | "ussd", ... }`

### POST /api/v1/wallet/deposit/payment-method
**Deposit with saved payment method**  
Use a saved payment method ID to initiate a deposit.

### POST /api/v1/wallet/deposit/authorize
**Authorize a pending charge**  
Completes a deposit that requires additional authorization (OTP, PIN, 3DS).

### POST /api/v1/wallet/deposit/payment-link
**Generate hosted payment link**  
Creates a shareable payment link a user can open to fund their wallet.

### GET /api/v1/wallet/deposit/status/{reference}
**Check deposit status**  
Poll payment status using the transaction reference.  
Path param: `reference`

---

## 7. WALLET — PAYOUTS

### POST /api/v1/wallet/payout/bank-transfer
**Send funds to a bank account**  
Initiates an NGN withdrawal to an external bank account.

### POST /api/v1/wallet/payout/transfer
**P2P internal transfer**  
Transfers NGN to another Mr. Monei user by their identifier.

---

## 8. WALLET — UTILITIES

### GET /api/v1/wallet/utils/banks
**List supported banks**  
Returns all banks available for withdrawal/verification.

### POST /api/v1/wallet/utils/verify-bank-account
**Resolve bank account**  
Looks up the account name for a given account number + bank code (for display before sending).

### GET /api/v1/wallet/utils/bank-code
**Get bank code by name**  
Returns the bank code needed for transfers when you only have the bank name.

---

## 9. WALLET — LEGACY ENDPOINTS
*(may overlap with above — confirm with backend which to use)*

### POST /api/v1/wallet/user/fund-wallet
**Fund wallet with naira**

### GET /api/v1/wallet/get-banks
**Get available banks for withdrawal**

### GET /api/v1/wallet/get-bank-code
**Get bank data with bank name**

### POST /api/v1/wallet/verify-bank-account
**Verify bank account**

### POST /api/v1/wallet/withdrawals
**Make a withdrawal to a naira account**

### POST /api/v1/wallet/peer-transfer
**Transfer funds to another user**

---

## 10. PAYMENT METHODS

### POST /api/v1/payment-methods/sync
**Sync virtual accounts as payment methods**  
Syncs any existing virtual accounts into the payment methods list.

### GET /api/v1/payment-methods
**Get all payment methods**  
Lists all saved payment methods for the user (cards, virtual accounts, etc.).

### POST /api/v1/payment-methods
**Create a payment method**  
Adds a new payment method to the user's account.

### GET /api/v1/payment-methods/{id}
**Get payment method details**  
Retrieves a specific saved payment method.  
Path param: `id`

### DELETE /api/v1/payment-methods/{id}
**Delete a payment method**  
Removes a saved payment method.  
Path param: `id`

### PATCH /api/v1/payment-methods/{id}/default
**Set default payment method**  
Marks a payment method as the user's default for deposits.  
Path param: `id`

---

## 11. TRANSACTIONS

### GET /api/v1/transactions/user
**Get all user transactions**  
Returns paginated transaction history. Supports filters (date range, type, status, etc.).

### GET /api/v1/transactions/{id}
**Get transaction by ID**  
Fetch full details of a single transaction.  
Path param: `id`

### GET /api/v1/transactions/reference/{reference}
**Get transaction by reference**  
Fetch a transaction using its reference string.  
Path param: `reference`

### POST /api/v1/transactions/flutterwave-transaction-callback
**Flutterwave webhook callback**  
Webhook endpoint for Flutterwave payment events. (backend handles, but may need to be whitelisted)

### POST /api/v1/transactions/flw-tx-callback
**Flutterwave TX callback (alternate)**  
Secondary Flutterwave callback endpoint.

---

## 12. BILLS PAYMENT

### GET /api/v1/bills/discovery/electricity-operators
**List electricity DISCOs**  
Returns all electricity distribution companies available for payment.

### GET /api/v1/bills/discovery/biller-items/{category}/{billerName}
**Get biller items**  
Returns specific plans/items for a provider (e.g., data bundles for MTN).  
Path params: `category` (e.g. "data"), `billerName` (e.g. "MTN")

### POST /api/v1/bills/validation/customer
**Validate customer details**  
Validates a customer before a bill payment (e.g., confirm meter number or decoder number).  
Body: `{ billerId, customerId, ... }`

### POST /api/v1/bills/pay/airtime
**Buy airtime**  
Purchases airtime for a phone number.

### POST /api/v1/bills/pay/data
**Buy mobile data**  
Purchases a data bundle for a phone number.

### POST /api/v1/bills/pay/electricity
**Pay electricity bill**  
Pays an electricity bill and returns a token.

### POST /api/v1/bills/pay/cable-tv
**Subscribe to cable TV**  
Renews or activates a DStv/GoTV/StarTimes subscription.

### GET /api/v1/bills/records
**Bill transaction history**  
Paginated list of all bill payments made by the user. Supports filtering.

### GET /api/v1/bills/records/reference/{reference}
**Get bill transaction by reference**  
Look up a specific bill payment using its reference.  
Path param: `reference`

### GET /api/v1/bills/records/receipt/{transactionId}
**Generate bill receipt**  
Returns or generates a downloadable receipt for a bill transaction.  
Path param: `transactionId`

---

### Legacy Bill Endpoints *(confirm with backend which set to use)*

- `GET /api/v1/bills/get-biller-items/{category}/{billerName}`
- `GET /api/v1/bills/billers/electricity`
- `POST /api/v1/bills/validate`
- `POST /api/v1/bills/buy-airtime`
- `POST /api/v1/bills/buy-mobile-data`
- `POST /api/v1/bills/buy-electricity`
- `POST /api/v1/bills/subscribe-cable-tv`
- `GET /api/v1/bills`
- `GET /api/v1/bills/reference/{reference}`
- `GET /api/v1/bills/receipt/{transactionId}`

---

## 13. BILL PAYMENT BENEFICIARIES

### GET /api/v1/bill-beneficiaries
**Get all bill beneficiaries**  
Returns saved beneficiaries (phone numbers, meter numbers, decoder IDs).

### GET /api/v1/bill-beneficiaries/favorites
**Get favorite beneficiaries**  
Returns only the favorited bill beneficiaries.

### POST /api/v1/bill-beneficiaries/mobile
**Save mobile beneficiary**  
Saves a phone number as a bill beneficiary.

### POST /api/v1/bill-beneficiaries/electricity
**Save electricity beneficiary**  
Saves a meter number as a bill beneficiary.

### POST /api/v1/bill-beneficiaries/cable-tv
**Save cable TV beneficiary**  
Saves a decoder number as a bill beneficiary.

### PUT /api/v1/bill-beneficiaries/{id}
**Update bill beneficiary**  
Updates a saved beneficiary's details.  
Path param: `id`

### DELETE /api/v1/bill-beneficiaries/{id}
**Delete bill beneficiary**  
Removes a saved bill beneficiary.  
Path param: `id`

---

## 14. BENEFICIARIES (TRANSFER)

### POST /api/v1/beneficiaries
**Create a beneficiary**  
Saves a bank account / user as a transfer beneficiary.

### GET /api/v1/beneficiaries
**Get all beneficiaries**  
Lists all saved transfer beneficiaries.

### GET /api/v1/beneficiaries/{id}
**Get a beneficiary**  
Retrieves a specific beneficiary by ID.  
Path param: `id`

### PUT /api/v1/beneficiaries/{id}
**Update a beneficiary**  
Updates beneficiary details.  
Path param: `id`

### DELETE /api/v1/beneficiaries/{type}/{name}
**Delete a beneficiary**  
Removes a beneficiary by type and name.  
Path params: `type`, `name`

### POST /api/v1/beneficiaries/transfer
**Transfer to a beneficiary**  
Initiates a transfer directly to a saved beneficiary.

---

## 15. SCHEDULES

### POST /api/v1/schedules
**Create scheduled payment**  
Sets up a future or recurring payment (e.g., weekly airtime, monthly transfer).

### GET /api/v1/schedules
**Get all scheduled payments**  
Returns all the user's upcoming and recurring scheduled payments.

### GET /api/v1/schedules/{id}
**Get a scheduled payment**  
Retrieves details of a specific schedule.  
Path param: `id`

### PUT /api/v1/schedules/{id}
**Update a scheduled payment**  
Modifies the amount, date, or frequency of a schedule.  
Path param: `id`

### DELETE /api/v1/schedules/{id}
**Cancel a scheduled payment**  
Cancels and removes a scheduled payment.  
Path param: `id`

---

## 16. EVM WALLET (Ethereum/EVM Chains)

### GET /api/v1/evm/networks
**Get supported blockchain networks**  
Returns all EVM-compatible chains supported (e.g., Ethereum, Polygon, BSC).

### GET /api/v1/evm/balance/native
**Get native token balance**  
Returns the user's balance of the chain's native token (ETH, BNB, MATIC, etc.).

### GET /api/v1/evm/balance/token
**Get ERC20 token balance**  
Returns balance of a specific ERC20 token in the user's wallet.

### GET /api/v1/evm/portfolio/{chainId}
**Get EVM portfolio**  
Returns all ERC20 token holdings on a specific chain.  
Path param: `chainId`

### POST /api/v1/evm/send/native
**Send native token**  
Sends native tokens (ETH, BNB, etc.) to another wallet address.

### POST /api/v1/evm/send/token
**Send ERC20 token**  
Sends a specific ERC20 token to another wallet address.

---

## 17. EVM EXCHANGE (Token Swaps)

### POST /api/v1/evm-exchange/price/native-to-token
**Get quote: native → ERC20**  
Returns a price quote for swapping a native token to an ERC20 token.

### POST /api/v1/evm-exchange/native-to-token
**Swap: native → ERC20**  
Executes the swap from native token to an ERC20 token.

### POST /api/v1/evm-exchange/price/token-to-token
**Get quote: ERC20 → ERC20**  
Returns a price quote for swapping one ERC20 token to another.

### POST /api/v1/evm-exchange/token-to-token
**Swap: ERC20 → ERC20**  
Executes the swap between two ERC20 tokens.

### POST /api/v1/evm-exchange/price/token-to-native
**Get quote: ERC20 → native**  
Returns a price quote for swapping an ERC20 token back to native.

### POST /api/v1/evm-exchange/token-to-native
**Swap: ERC20 → native**  
Executes the swap from ERC20 token to native token.

---

## 18. SOLANA WALLET

### GET /api/v1/solana/address
**Get Solana wallet address**  
Returns the user's Solana public key / wallet address.

### GET /api/v1/solana/balance
**Get SOL balance**  
Returns the user's SOL balance.

### GET /api/v1/solana/token-balance/{tokenMintAddress}
**Get SPL token balance**  
Returns the user's balance of a specific SPL token.  
Path param: `tokenMintAddress`

### GET /api/v1/solana/portfolio
**Get Solana portfolio**  
Returns all SOL and SPL token holdings for the user.

### POST /api/v1/solana/transfer
**Transfer SOL**  
Sends SOL to another wallet address.

### POST /api/v1/solana/transfer-token
**Transfer SPL token**  
Sends a specific SPL token to another wallet address.

---

## 19. SOLANA EXCHANGE (Token Swaps)

### GET /api/v1/solana-exchange/quote/sol-to-token
**Get quote: SOL → SPL token**

### GET /api/v1/solana-exchange/quote/token-to-sol
**Get quote: SPL token → SOL**

### GET /api/v1/solana-exchange/quote/token-to-token
**Get quote: SPL token → SPL token**

### POST /api/v1/solana-exchange/swap-sol-to-token
**Swap SOL → SPL token**

### POST /api/v1/solana-exchange/swap-token-to-token
**Swap SPL token → SPL token**

### POST /api/v1/solana-exchange/swap-token-to-sol
**Swap SPL token → SOL**

---

## 20. OFFRAMP — CRYPTO TO FIAT

### GET /api/v1/offramp/payouts/banks
**Get supported payout banks**  
Returns banks available for crypto offramp withdrawals.

### POST /api/v1/offramp/payouts/verify
**Verify bank account**  
Verifies an account number before initiating an offramp payout.

### GET /api/v1/offramp/exchange/assets
**List supported offramp assets**  
Returns all crypto assets that can be converted to fiat.

### GET /api/v1/offramp/exchange/quote
**Get crypto-to-fiat quote**  
Returns the current exchange rate and fee for converting crypto to NGN.

### POST /api/v1/offramp/exchange/initiate
**Initiate crypto-to-fiat order**  
Starts the process of converting crypto to NGN and sending to a bank.

### GET /api/v1/offramp/ledger/history
**Get offramp transaction history**  
Returns a history of all offramp transactions.

### GET /api/v1/offramp/ledger/status/{reference}
**Track offramp transaction**  
Returns the current status of an offramp order by reference.  
Path param: `reference`

---

## 21. SECURITIES (Tokenized Stocks)

### POST /api/v1/securities/stocks/sync
**Sync available stocks from STOX**  
Refreshes the list of tradable stocks from the STOX integration.

### GET /api/v1/securities/stocks
**Get available stocks**  
Returns all stocks available for purchase with real-time prices.

### GET /api/v1/securities/stocks/{ticker}
**Get stock details**  
Returns details and current price for a specific stock.  
Path param: `ticker` (e.g. "AAPL")

### POST /api/v1/securities/stocks/orders
**Buy tokenized stock**  
Places a buy order for a tokenized stock.

### GET /api/v1/securities/users/me/holdings
**Get user stock holdings**  
Returns all stocks currently owned by the user.

### GET /api/v1/securities/users/me/holdings/{ticker}
**Get specific stock holding**  
Returns the user's holding details for one stock.  
Path param: `ticker`

### GET /api/v1/securities/integrations/stox/orders
**Get STOX orders**  
Returns the user's order history from the STOX integration.

---

## 22. AI AGENT CONVERSATIONS

### GET /api/v1/agent/conversations
**Get all conversations**  
Returns a list of all the user's past AI agent conversations.

### POST /api/v1/agent/conversations
**Chat with Mr. Monei AI Agent**  
Sends a message and receives a response from the AI agent.

### GET /api/v1/agent/conversations/{conversationId}/messages
**Get conversation messages**  
Returns the full message history of a specific conversation.  
Path param: `conversationId`

### POST /api/v1/agent/conversations/init-conversation
**Initialize a new conversation**  
Creates a new conversation session before sending messages.

### DELETE /api/v1/agent/conversations/{conversationId}
**Delete conversation**  
Permanently deletes a conversation and its messages.  
Path param: `conversationId`

### PATCH /api/v1/agent/conversations/{conversationId}/pin
**Pin/unpin conversation**  
Toggles the pinned state of a conversation.  
Path param: `conversationId`

### POST /api/v1/agent/conversations/stream
**Stream AI response (SSE)**  
Sends a message and streams the AI response in real-time using Server-Sent Events.

### POST /api/v1/agent/conversations/voice
**Voice chat with AI agent**  
Sends a voice message and receives an AI agent response.

---

## 23. GUEST AGENT

### POST /api/v1/guest-agent/stream
**Guest chat stream (SSE)**  
Allows unauthenticated/guest users to chat with the AI agent via streaming SSE.

---

## 24. CHAT SETTINGS

### GET /api/v1/chat-settings
**Get chat settings**  
Returns the user's current AI chat configuration.

### PUT /api/v1/chat-settings
**Update chat settings**  
Updates chat preferences (language, personality, etc.).

### POST /api/v1/chat-settings/reset
**Reset chat settings**  
Restores all chat settings to their defaults.

### GET /api/v1/chat-settings/supported-networks
**Get supported networks config**  
Returns the list of blockchain networks the AI agent can operate on.

---

## 25. API GATEWAY (Developer/Integration)

### POST /api/v1/api-gateway/clients
**Create API client**  
Creates a new API client (app) with credentials for third-party integration.

### GET /api/v1/api-gateway/clients
**List API clients**  
Returns all API clients registered under the user's account.

### GET /api/v1/api-gateway/clients/{id}
**Get API client details**  
Returns details of a specific API client.  
Path param: `id`

### PUT /api/v1/api-gateway/clients/{id}
**Update API client**  
Updates the name or settings of an API client.  
Path param: `id`

### DELETE /api/v1/api-gateway/clients/{id}
**Delete API client**  
Removes an API client and revokes its credentials.  
Path param: `id`

### POST /api/v1/api-gateway/clients/{id}/regenerate-keys
**Regenerate API keys**  
Issues new API keys for a client, invalidating the old ones.  
Path param: `id`

---

## 26. CUSTOMERS (For Business Accounts)

### POST /api/v1/customers/{businessId}
**Create a customer**  
Adds a customer record under a business account.  
Path param: `businessId`

### GET /api/v1/customers/{businessId}
**List business customers**  
Returns all customers for a specific business.  
Path param: `businessId`

### GET /api/v1/customers/{businessId}/{customerId}
**Get a customer**  
Retrieves a specific customer record.  
Path params: `businessId`, `customerId`

### PATCH /api/v1/customers/{businessId}/{customerId}
**Update a customer**  
Updates customer details under a business.  
Path params: `businessId`, `customerId`

### PATCH /api/v1/customers/{businessId}/{customerId}/disable
**Disable a customer**  
Disables a customer account under a business.  
Path params: `businessId`, `customerId`

---

## Implementation Notes

1. **Auth flow:** `register → send-verification-email → verify → login` → receive token → use in all subsequent requests.
2. **Onboarding flow:** `request-signup → verify-email-otp → complete-profile → phone/send-otp → phone/verify-otp` → check `onboarding-status` to know what's left.
3. **KYC tiers:** Tier 1 = basic signup, Tier 2 = NIN, Tier 3 = BVN. Higher tiers unlock higher transaction limits (check `/kyc/limits`).
4. **Deposits flow:** Call `/wallet/deposit` → if status is `pending`, call `/wallet/deposit/authorize` with OTP/PIN → poll `/wallet/deposit/status/{reference}` to confirm.
5. **Bill payments flow:** Discovery → Validate customer → Pay. Always validate before paying to avoid failed transactions.
6. **Crypto swaps:** Always call the `/price` or `/quote` endpoint first to show the user the rate, then call the swap endpoint to execute.
7. **AI streaming:** Use `/agent/conversations/stream` (authenticated) or `/guest-agent/stream` (unauthenticated) with SSE for real-time chat responses.
8. **Transaction PIN:** Required for sensitive operations like transfers and withdrawals. Set via `set-transaction-pin` during onboarding.
9. **Duplicate endpoint groups:** Some bill and wallet endpoints appear twice (legacy vs. new). Confirm with the backend team which group is active — prefer the namespaced ones (`/bills/pay/...`, `/wallet/payout/...`, `/wallet/utils/...`).
