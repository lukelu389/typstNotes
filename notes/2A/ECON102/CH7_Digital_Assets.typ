#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 7 - Digital Assets"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Existing system: 

$ "Sender's bank" => "Intermediary banks" => "Foreign-exchange conversion" => "Recipient's bank" $

Digital rails:

$ "Sender" => "Share ledger" => "Receiver" $

*Digital Asset* is a digital representation of value, owenershup, or a cliam

- Record on a distributed ledger or another digital database

- Settled and verified without traditional intermediaries

- Its value anr risk depend on who issues it, what backs it, whether it can be redeemed and the rights it gives the holder

Examples:

Bitcoins: decentralized and volatile

Ethereum: newtwork designed for smart contracts and tokens

Stablecoins: private tokens designed to maintain a stable value, backed by reserves, not fiat currency

CBDC: digital forms of a country's official currency issued by central bank

Tokenized assets: ral-wrolds assets represented as digital tokens on a blockchain

#align(center)[#image("../../../pictures/yr2/econ2ch7_1.png", width:13cm)]

A *ledger* is a database that records who owns an asset and when it is transferred.

Public ledger:

- anyone can usually view the record and submit transactions
- A distributed network validates
transactions

Permission ledger:
- access is limited to approved participants
- an institution or consortium governs the network

*Both use cryptography to authorize transfers and protect the record.*

#defn[*Stablecoin* \ 

A *stablecoin* is a crptoasset designed to maintain a stable value, usually \$1USD

They are backed by cash reserves or short-term US securities. 

1. *Adequate reserves*: the issue holds enough cash and short-term treasuries to redeem every tokens
2. *Credible redemption*: holder believe they can exchange each stablecoin for \$ 1 when needed

3. *Arbitrage stablizes the price*: if the stablecoin trades below \$1, traders buy it and redeem it for \$1. Their purchases push the market price back towards parity 
]

Whenever there decrease of price, the issuer can destroy stablecoins by purchasing those tablecoins from holders by reserves to reduce supply.

For increase of price, the issue can issue more stablecoins to increase supply.

Examples:

*Circle(USD-C)*: regulates every month by third parity

*Tether(USD-T)*: publishs report quaterly. but less transparent

An *algorithmic* stablecoin is not backed by cash:

TerraUSD $<->$ Luna

Every holder are given an *anchor*(protocol) that is 20% interest rate

When TerraUSD price increases, people sell pockets the increase by converting to Luna

When TerraUSD prices decreases, people sell pockets by converting Luna to TerraUSD

In 2022, UST decreases, Luna supply increases, and its price decreases, making UST to decrease more

The main issue is because people lost trust on cryptocurrencies, Luna is one of them.

\

*Stablecoin Growth Influence Bank Funding*

- Retail deposits may move into stablecoins instead of remaining at banks.

- Banks may have to pay more to attract deposits, replae lost funding in markets or reduce balance-sheet growth
- Higher marginal funcing costs can raise loan rates and itghten bank credit

- During a stablecoin run, issuers may withdraw bank deposits or sell T-bills quickly, putting pressure on bank liquidity and short-term funding markets.

- *Opportunity cost*: Because most stablecoins pay no interest, higher policy rates make deposits and other interest-bearing assets more attractive.
- *Bank funding*: If deposits move into stablecoins, banks may raise deposit and loan rates or reduce lending, potentially strengthening monetary policy transmission.
- *Uncertain overall effect*: The result depends on the size of stablecoins, whether they pay interest and how banks respond
- *Runs*: Rapid redemptions can force stablecoin issuers to sell reserves.
- *Concentration*: The failure of a large issuer or exchange can spread losses and disrupt payments.
- *Cybersecurity*: The Binance attack shows how losses and suspended withdrawals at a large platform can undermine confidence in the wider system.

#align(center)[#image("../../../pictures/yr2/econ2ch7_2.png", width:13cm)]

#defn[*Central Bank Digital Currency* \ 

A *CDBC* is a digital liability of the central bank, like digital cash

- CBDC are public, stablecoins are privately issued

- CBDC is a direct claim to the central bank

- *Retail CBDC*: desgined for households and businesses

- *Wholesale CBDC*: desgined for payments between financial institutions
]

Concerns on issuing CBDC:

- Decline in the use of cash
- Digitization of economy
- Competition from privte digital currencies, especially stablecoins

#align(center)[
  #table(
      columns: 3, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [Users], [Account-based], [Token-based],
      [Retail], [Records on balances], [Users hold and transfer digital tokens], [Wholesale],[similar to Lynx], [Shared ledger]
      )
  ]

*Advantages* about CBDC

- *Inclusion*: lost-cost, offline payment could reach people underseved by banks

- *Public money*: preserve access to central bank money as cash use declines

- *Domestic payment*: faster settlement could reduce delays and costs

- *Cross-border payments*: compatible CBDC could simplify international transfer

- *Direct policy tool*: a CBDC could support government-authoriszed transfer to households. An interest-bearing CBDC could also cary a negative rate

*Risks*:

- *Disintermediation*: Households could move deposits to central bank money, raising bank funding costs and reducing lending capacity.
- *Privacy and state power*: Transaction data could become visible to public authorities or intermediaries without strong safeguards.
- *Cybersecurity and operational concentration*: A national platform becomes critical infrastructure and an attractive target for attack.
- *Digital capital flight*: In a crisis, funds could move rapidly into safer domestic money or a foreign CBDC

*Payment system are national securities*(i.e. SWIFT)

#defn[*Tokenization* \

*Tokenization*   represents ownership or another claim on a real-world asset as digital token

*Advantages*
1. Fractional ownership: investors can buy a small share of an expensive asset

2. Lower costs: shared records and smart contracts can reduce trnasaction and servicing costs

3. Faster settlement: near-isntant settlement can reduce counterparty exposure and epand market access

*Limits*

Tokenization can reduce the number of intermediaries, but custody, law, identity, and governance remain
]

#align(center)[
  #table(
      columns: 3, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      []
      )
  ]

