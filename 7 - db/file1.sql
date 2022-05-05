--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, name, url, price) FROM stdin;
1	Bitcoin1BTC	https://coinmarketcap.com/currencies/bitcoin/	$38,898.67
2	Ethereum2ETH	https://coinmarketcap.com/currencies/ethereum/	$2,862.83
3	Tether3USDT	https://coinmarketcap.com/currencies/tether/	$1.00
4	BNB4BNB	https://coinmarketcap.com/currencies/bnb/	$393.12
5	USD Coin5USDC	https://coinmarketcap.com/currencies/usd-coin/	$1.00
6	Solana6SOL	https://coinmarketcap.com/currencies/solana/	$96.97
7	XRP7XRP	https://coinmarketcap.com/currencies/xrp/	$0.6666
8	Terra8LUNA	https://coinmarketcap.com/currencies/terra-luna/	$90.01
9	Cardano9ADA	https://coinmarketcap.com/currencies/cardano/	$0.8564
10	Avalanche10AVAX	https://coinmarketcap.com/currencies/avalanche/	$69.50
11	DogecoinDOGE	https://coinmarketcap.com/currencies/dogecoin/	$0.14
12	TerraUSDUST	https://coinmarketcap.com/currencies/terrausd/	$1.00
13	Binance USDBUSD	https://coinmarketcap.com/currencies/binance-usd/	$1.00
14	PolkadotDOT	https://coinmarketcap.com/currencies/polkadot-new/	$17.49
15	Shiba InuSHIB	https://coinmarketcap.com/currencies/shiba-inu/	$0.00
16	Wrapped BitcoinWBTC	https://coinmarketcap.com/currencies/wrapped-bitcoin/	$38836.36
17	PolygonMATIC	https://coinmarketcap.com/currencies/polygon/	$1.29
18	CronosCRO	https://coinmarketcap.com/currencies/cronos/	$0.39
19	NEAR ProtocolNEAR	https://coinmarketcap.com/currencies/near-protocol/	$14.01
20	DaiDAI	https://coinmarketcap.com/currencies/multi-collateral-dai/	$1.00
21	LitecoinLTC	https://coinmarketcap.com/currencies/litecoin/	$101.59
22	TRONTRX	https://coinmarketcap.com/currencies/tron/	$0.06
23	CosmosATOM	https://coinmarketcap.com/currencies/cosmos/	$21.33
24	ChainlinkLINK	https://coinmarketcap.com/currencies/chainlink/	$12.93
25	UniswapUNI	https://coinmarketcap.com/currencies/uniswap/	$8.49
26	Bitcoin CashBCH	https://coinmarketcap.com/currencies/bitcoin-cash/	$307.00
27	UNUS SED LEOLEO	https://coinmarketcap.com/currencies/unus-sed-leo/	$5.92
28	FTX TokenFTT	https://coinmarketcap.com/currencies/ftx-token/	$40.60
29	ApeCoinAPE	https://coinmarketcap.com/currencies/apecoin-ape/	$17.32
30	StellarXLM	https://coinmarketcap.com/currencies/stellar/	$0.18
31	AlgorandALGO	https://coinmarketcap.com/currencies/algorand/	$0.68
32	Ethereum ClassicETC	https://coinmarketcap.com/currencies/ethereum-classic/	$32.32
33	MoneroXMR	https://coinmarketcap.com/currencies/monero/	$239.31
34	HederaHBAR	https://coinmarketcap.com/currencies/hedera/	$0.18
35	Internet ComputerICP	https://coinmarketcap.com/currencies/internet-computer/	$15.54
36	DecentralandMANA	https://coinmarketcap.com/currencies/decentraland/	$1.90
37	FilecoinFIL	https://coinmarketcap.com/currencies/filecoin/	$17.98
38	VeChainVET	https://coinmarketcap.com/currencies/vechain/	$0.05
39	ElrondEGLD	https://coinmarketcap.com/currencies/elrond-egld/	$149.59
40	The SandboxSAND	https://coinmarketcap.com/currencies/the-sandbox/	$2.62
41	Theta NetworkTHETA	https://coinmarketcap.com/currencies/theta-network/	$2.88
42	THORChainRUNE	https://coinmarketcap.com/currencies/thorchain/	$7.91
43	FantomFTM	https://coinmarketcap.com/currencies/fantom/	$1.02
44	TezosXTZ	https://coinmarketcap.com/currencies/tezos/	$2.86
45	Axie InfinityAXS	https://coinmarketcap.com/currencies/axie-infinity/	$41.30
46	PancakeSwapCAKE	https://coinmarketcap.com/currencies/pancakeswap/	$8.73
47	KlaytnKLAY	https://coinmarketcap.com/currencies/klaytn/	$0.88
48	EOSEOS	https://coinmarketcap.com/currencies/eos/	$2.30
49	AaveAAVE	https://coinmarketcap.com/currencies/aave/	$160.31
50	ZcashZEC	https://coinmarketcap.com/currencies/zcash/	$150.55
51	STEPNGMT	https://coinmarketcap.com/currencies/green-metaverse-token/	$3.24
52	HeliumHNT	https://coinmarketcap.com/currencies/helium/	$16.60
53	FlowFLOW	https://coinmarketcap.com/currencies/flow/	$5.28
54	KuCoin TokenKCS	https://coinmarketcap.com/currencies/kucoin-token/	$19.26
55	WavesWAVES	https://coinmarketcap.com/currencies/waves/	$16.46
56	IOTAMIOTA	https://coinmarketcap.com/currencies/iota/	$0.63
57	MakerMKR	https://coinmarketcap.com/currencies/maker/	$1726.34
58	BitTorrent-NewBTT	https://coinmarketcap.com/currencies/bittorrent-new/	$0.00
59	eCashXEC	https://coinmarketcap.com/currencies/ecash/	$0.00
60	The GraphGRT	https://coinmarketcap.com/currencies/the-graph/	$0.34
61	Bitcoin SVBSV	https://coinmarketcap.com/currencies/bitcoin-sv/	$77.99
62	Huobi TokenHT	https://coinmarketcap.com/currencies/huobi-token/	$9.40
63	Convex FinanceCVX	https://coinmarketcap.com/currencies/convex-finance/	$24.80
64	StacksSTX	https://coinmarketcap.com/currencies/stacks/	$1.07
65	NeoNEO	https://coinmarketcap.com/currencies/neo/	$19.34
66	TrueUSDTUSD	https://coinmarketcap.com/currencies/trueusd/	$1.00
67	KusamaKSM	https://coinmarketcap.com/currencies/kusama/	$154.47
68	HarmonyONE	https://coinmarketcap.com/currencies/harmony/	$0.11
69	ZilliqaZIL	https://coinmarketcap.com/currencies/zilliqa/	$0.10
70	QuantQNT	https://coinmarketcap.com/currencies/quant/	$103.76
71	GalaGALA	https://coinmarketcap.com/currencies/gala/	$0.18
72	CeloCELO	https://coinmarketcap.com/currencies/celo/	$2.80
73	ChilizCHZ	https://coinmarketcap.com/currencies/chiliz/	$0.20
74	NexoNEXO	https://coinmarketcap.com/currencies/nexo/	$2.16
75	Curve DAO TokenCRV	https://coinmarketcap.com/currencies/curve-dao-token/	$2.57
76	OKBOKB	https://coinmarketcap.com/currencies/okb/	$19.65
77	Enjin CoinENJ	https://coinmarketcap.com/currencies/enjin-coin/	$1.32
78	LoopringLRC	https://coinmarketcap.com/currencies/loopring/	$0.86
79	Basic Attention TokenBAT	https://coinmarketcap.com/currencies/basic-attention-token/	$0.69
80	DashDASH	https://coinmarketcap.com/currencies/dash/	$96.53
81	MinaMINA	https://coinmarketcap.com/currencies/mina/	$2.08
82	Pax DollarUSDP	https://coinmarketcap.com/currencies/paxos-standard/	$1.00
83	Neutrino USDUSDN	https://coinmarketcap.com/currencies/neutrino-usd/	$0.96
84	KavaKAVA	https://coinmarketcap.com/currencies/kava/	$5.13
85	AmpAMP	https://coinmarketcap.com/currencies/amp/	$0.02
86	Kyber Network Crystal v2KNC	https://coinmarketcap.com/currencies/kyber-network-crystal-v2/	$5.01
87	ArweaveAR	https://coinmarketcap.com/currencies/arweave/	$26.47
88	DecredDCR	https://coinmarketcap.com/currencies/decred/	$61.01
89	CompoundCOMP	https://coinmarketcap.com/currencies/compound/	$126.32
90	NEMXEM	https://coinmarketcap.com/currencies/nem/	$0.09
91	Theta FuelTFUEL	https://coinmarketcap.com/currencies/theta-fuel/	$0.16
92	KadenaKDA	https://coinmarketcap.com/currencies/kadena/	$4.76
93	HoloHOT	https://coinmarketcap.com/currencies/holo/	$0.00
94	MoonbeamGLMR	https://coinmarketcap.com/currencies/moonbeam/	$3.25
95	Oasis NetworkROSE	https://coinmarketcap.com/currencies/oasis-network/	$0.20
96	AudiusAUDIO	https://coinmarketcap.com/currencies/audius/	$1.12
97	ICONICX	https://coinmarketcap.com/currencies/icon/	$0.75
98	SecretSCRT	https://coinmarketcap.com/currencies/secret/	$4.21
99	XDC NetworkXDC	https://coinmarketcap.com/currencies/xinfin/	$0.06
100	yearn.financeYFI	https://coinmarketcap.com/currencies/yearn-finance/	$18192.66
101	Bitcoin1BTC	https://coinmarketcap.com/currencies/bitcoin/	$38,772.84
102	Ethereum2ETH	https://coinmarketcap.com/currencies/ethereum/	$2,858.63
103	Tether3USDT	https://coinmarketcap.com/currencies/tether/	$1.00
104	BNB4BNB	https://coinmarketcap.com/currencies/bnb/	$392.31
105	USD Coin5USDC	https://coinmarketcap.com/currencies/usd-coin/	$1.00
106	Solana6SOL	https://coinmarketcap.com/currencies/solana/	$96.67
107	XRP7XRP	https://coinmarketcap.com/currencies/xrp/	$0.6648
108	Terra8LUNA	https://coinmarketcap.com/currencies/terra-luna/	$89.66
109	Cardano9ADA	https://coinmarketcap.com/currencies/cardano/	$0.8537
110	Avalanche10AVAX	https://coinmarketcap.com/currencies/avalanche/	$69.34
111	DogecoinDOGE	https://coinmarketcap.com/currencies/dogecoin/	$0.14
112	TerraUSDUST	https://coinmarketcap.com/currencies/terrausd/	$1.00
113	Binance USDBUSD	https://coinmarketcap.com/currencies/binance-usd/	$1.00
114	PolkadotDOT	https://coinmarketcap.com/currencies/polkadot-new/	$17.42
115	Shiba InuSHIB	https://coinmarketcap.com/currencies/shiba-inu/	$0.00
116	Wrapped BitcoinWBTC	https://coinmarketcap.com/currencies/wrapped-bitcoin/	$38834.52
117	PolygonMATIC	https://coinmarketcap.com/currencies/polygon/	$1.29
118	CronosCRO	https://coinmarketcap.com/currencies/cronos/	$0.39
119	NEAR ProtocolNEAR	https://coinmarketcap.com/currencies/near-protocol/	$14.05
120	DaiDAI	https://coinmarketcap.com/currencies/multi-collateral-dai/	$1.00
121	LitecoinLTC	https://coinmarketcap.com/currencies/litecoin/	$101.51
122	TRONTRX	https://coinmarketcap.com/currencies/tron/	$0.06
123	CosmosATOM	https://coinmarketcap.com/currencies/cosmos/	$21.30
124	ChainlinkLINK	https://coinmarketcap.com/currencies/chainlink/	$12.91
125	UniswapUNI	https://coinmarketcap.com/currencies/uniswap/	$8.47
126	Bitcoin CashBCH	https://coinmarketcap.com/currencies/bitcoin-cash/	$305.87
127	UNUS SED LEOLEO	https://coinmarketcap.com/currencies/unus-sed-leo/	$5.89
128	FTX TokenFTT	https://coinmarketcap.com/currencies/ftx-token/	$40.52
129	ApeCoinAPE	https://coinmarketcap.com/currencies/apecoin-ape/	$17.26
130	AlgorandALGO	https://coinmarketcap.com/currencies/algorand/	$0.68
131	StellarXLM	https://coinmarketcap.com/currencies/stellar/	$0.18
132	Ethereum ClassicETC	https://coinmarketcap.com/currencies/ethereum-classic/	$32.26
133	MoneroXMR	https://coinmarketcap.com/currencies/monero/	$237.96
134	HederaHBAR	https://coinmarketcap.com/currencies/hedera/	$0.17
135	Internet ComputerICP	https://coinmarketcap.com/currencies/internet-computer/	$15.52
136	DecentralandMANA	https://coinmarketcap.com/currencies/decentraland/	$1.89
137	FilecoinFIL	https://coinmarketcap.com/currencies/filecoin/	$17.98
138	VeChainVET	https://coinmarketcap.com/currencies/vechain/	$0.05
139	ElrondEGLD	https://coinmarketcap.com/currencies/elrond-egld/	$149.17
140	The SandboxSAND	https://coinmarketcap.com/currencies/the-sandbox/	$2.61
141	Theta NetworkTHETA	https://coinmarketcap.com/currencies/theta-network/	$2.86
142	THORChainRUNE	https://coinmarketcap.com/currencies/thorchain/	$7.92
143	FantomFTM	https://coinmarketcap.com/currencies/fantom/	$1.01
144	TezosXTZ	https://coinmarketcap.com/currencies/tezos/	$2.85
145	Axie InfinityAXS	https://coinmarketcap.com/currencies/axie-infinity/	$41.17
146	PancakeSwapCAKE	https://coinmarketcap.com/currencies/pancakeswap/	$8.73
147	KlaytnKLAY	https://coinmarketcap.com/currencies/klaytn/	$0.88
148	EOSEOS	https://coinmarketcap.com/currencies/eos/	$2.30
149	AaveAAVE	https://coinmarketcap.com/currencies/aave/	$160.06
150	ZcashZEC	https://coinmarketcap.com/currencies/zcash/	$150.25
151	STEPNGMT	https://coinmarketcap.com/currencies/green-metaverse-token/	$3.23
152	HeliumHNT	https://coinmarketcap.com/currencies/helium/	$16.61
153	FlowFLOW	https://coinmarketcap.com/currencies/flow/	$5.26
154	KuCoin TokenKCS	https://coinmarketcap.com/currencies/kucoin-token/	$19.18
155	WavesWAVES	https://coinmarketcap.com/currencies/waves/	$16.43
156	IOTAMIOTA	https://coinmarketcap.com/currencies/iota/	$0.63
157	MakerMKR	https://coinmarketcap.com/currencies/maker/	$1731.27
158	BitTorrent-NewBTT	https://coinmarketcap.com/currencies/bittorrent-new/	$0.00
159	eCashXEC	https://coinmarketcap.com/currencies/ecash/	$0.00
160	The GraphGRT	https://coinmarketcap.com/currencies/the-graph/	$0.34
161	Bitcoin SVBSV	https://coinmarketcap.com/currencies/bitcoin-sv/	$77.70
162	Huobi TokenHT	https://coinmarketcap.com/currencies/huobi-token/	$9.39
163	Convex FinanceCVX	https://coinmarketcap.com/currencies/convex-finance/	$24.94
164	StacksSTX	https://coinmarketcap.com/currencies/stacks/	$1.07
165	NeoNEO	https://coinmarketcap.com/currencies/neo/	$19.30
166	TrueUSDTUSD	https://coinmarketcap.com/currencies/trueusd/	$1.00
167	KusamaKSM	https://coinmarketcap.com/currencies/kusama/	$154.18
168	HarmonyONE	https://coinmarketcap.com/currencies/harmony/	$0.11
169	ZilliqaZIL	https://coinmarketcap.com/currencies/zilliqa/	$0.10
170	QuantQNT	https://coinmarketcap.com/currencies/quant/	$103.61
171	GalaGALA	https://coinmarketcap.com/currencies/gala/	$0.18
172	NexoNEXO	https://coinmarketcap.com/currencies/nexo/	$2.17
173	CeloCELO	https://coinmarketcap.com/currencies/celo/	$2.79
174	ChilizCHZ	https://coinmarketcap.com/currencies/chiliz/	$0.20
175	Curve DAO TokenCRV	https://coinmarketcap.com/currencies/curve-dao-token/	$2.57
176	OKBOKB	https://coinmarketcap.com/currencies/okb/	$19.61
177	Enjin CoinENJ	https://coinmarketcap.com/currencies/enjin-coin/	$1.32
178	LoopringLRC	https://coinmarketcap.com/currencies/loopring/	$0.85
179	Basic Attention TokenBAT	https://coinmarketcap.com/currencies/basic-attention-token/	$0.69
180	DashDASH	https://coinmarketcap.com/currencies/dash/	$96.54
181	MinaMINA	https://coinmarketcap.com/currencies/mina/	$2.07
182	Pax DollarUSDP	https://coinmarketcap.com/currencies/paxos-standard/	$1.00
183	Neutrino USDUSDN	https://coinmarketcap.com/currencies/neutrino-usd/	$0.96
184	KavaKAVA	https://coinmarketcap.com/currencies/kava/	$5.15
185	AmpAMP	https://coinmarketcap.com/currencies/amp/	$0.02
186	Kyber Network Crystal v2KNC	https://coinmarketcap.com/currencies/kyber-network-crystal-v2/	$5.02
187	ArweaveAR	https://coinmarketcap.com/currencies/arweave/	$26.45
188	DecredDCR	https://coinmarketcap.com/currencies/decred/	$61.12
189	CompoundCOMP	https://coinmarketcap.com/currencies/compound/	$126.16
190	NEMXEM	https://coinmarketcap.com/currencies/nem/	$0.09
191	Theta FuelTFUEL	https://coinmarketcap.com/currencies/theta-fuel/	$0.16
192	KadenaKDA	https://coinmarketcap.com/currencies/kadena/	$4.72
193	HoloHOT	https://coinmarketcap.com/currencies/holo/	$0.00
194	MoonbeamGLMR	https://coinmarketcap.com/currencies/moonbeam/	$3.24
195	Oasis NetworkROSE	https://coinmarketcap.com/currencies/oasis-network/	$0.20
196	AudiusAUDIO	https://coinmarketcap.com/currencies/audius/	$1.11
197	ICONICX	https://coinmarketcap.com/currencies/icon/	$0.75
198	SecretSCRT	https://coinmarketcap.com/currencies/secret/	$4.19
199	XDC NetworkXDC	https://coinmarketcap.com/currencies/xinfin/	$0.06
200	yearn.financeYFI	https://coinmarketcap.com/currencies/yearn-finance/	$18200.67
201	BORA101BORA	https://coinmarketcap.com/currencies/bora/	$0.7583
202	IoTeX102IOTX	https://coinmarketcap.com/currencies/iotex/	$0.06801
203	Qtum103QTUM	https://coinmarketcap.com/currencies/qtum/	$6.18
204	0x104ZRX	https://coinmarketcap.com/currencies/0x/	$0.7493
205	Synthetix105SNX	https://coinmarketcap.com/currencies/synthetix-network-token/	$5.51
206	Anchor Protocol106ANC	https://coinmarketcap.com/currencies/anchor-protocol/	$1.82
207	PAX Gold107PAXG	https://coinmarketcap.com/currencies/pax-gold/	$1,906.04
208	SKALE Network108SKL	https://coinmarketcap.com/currencies/skale-network/	$0.1751
209	OMG Network109OMG	https://coinmarketcap.com/currencies/omg/	$4.30
210	Gnosis110GNO	https://coinmarketcap.com/currencies/gnosis-gno/	$319.67
211	SymbolXYM	https://coinmarketcap.com/currencies/symbol/	$0.10
212	SerumSRM	https://coinmarketcap.com/currencies/serum/	$2.17
213	AnkrANKR	https://coinmarketcap.com/currencies/ankr/	$0.07
214	BancorBNT	https://coinmarketcap.com/currencies/bancor/	$2.16
215	1inch Network1INCH	https://coinmarketcap.com/currencies/1inch/	$1.35
216	Bitcoin GoldBTG	https://coinmarketcap.com/currencies/bitcoin-gold/	$31.69
217	SXPSXP	https://coinmarketcap.com/currencies/sxp/	$1.15
218	LivepeerLPT	https://coinmarketcap.com/currencies/livepeer/	$26.09
219	Dogelon MarsELON	https://coinmarketcap.com/currencies/dogelon/	$0.00
220	IOSTIOST	https://coinmarketcap.com/currencies/iostoken/	$0.03
221	RavencoinRVN	https://coinmarketcap.com/currencies/ravencoin/	$0.05
222	WAXWAXP	https://coinmarketcap.com/currencies/wax/	$0.26
223	CelsiusCEL	https://coinmarketcap.com/currencies/celsius/	$2.07
224	GateTokenGT	https://coinmarketcap.com/currencies/gatetoken/	$6.25
225	SiacoinSC	https://coinmarketcap.com/currencies/siacoin/	$0.01
226	JUSTJST	https://coinmarketcap.com/currencies/just/	$0.06
227	Frax ShareFXS	https://coinmarketcap.com/currencies/frax-share/	$27.48
228	WOO NetworkWOO	https://coinmarketcap.com/currencies/wootrade/	$0.43
229	renBTCRENBTC	https://coinmarketcap.com/currencies/renbtc/	$39004.54
230	OntologyONT	https://coinmarketcap.com/currencies/ontology/	$0.50
231	Acala TokenACA	https://coinmarketcap.com/currencies/acala/	$1.17
232	APENFTNFT	https://coinmarketcap.com/currencies/apenft/	$0.00
233	HorizenZEN	https://coinmarketcap.com/currencies/horizen/	$34.43
234	Fei USDFEI	https://coinmarketcap.com/currencies/fei-usd/	$0.99
235	SwissBorgCHSB	https://coinmarketcap.com/currencies/swissborg/	$0.41
236	RallyRLY	https://coinmarketcap.com/currencies/rally/	$0.15
237	SushiSwapSUSHI	https://coinmarketcap.com/currencies/sushiswap/	$3.17
238	Render TokenRNDR	https://coinmarketcap.com/currencies/render-token/	$1.66
239	GolemGLM	https://coinmarketcap.com/currencies/golem-network-tokens/	$0.40
240	Immutable XIMX	https://coinmarketcap.com/currencies/immutable-x/	$1.69
241	StorjSTORJ	https://coinmarketcap.com/currencies/storj/	$1.02
242	UMAUMA	https://coinmarketcap.com/currencies/uma/	$5.77
243	Voyager TokenVGX	https://coinmarketcap.com/currencies/voyager-token/	$1.34
244	VelasVLX	https://coinmarketcap.com/currencies/velas/	$0.16
245	PolymathPOLY	https://coinmarketcap.com/currencies/polymath-network/	$0.40
246	RevainREV	https://coinmarketcap.com/currencies/revain/	$0.00
247	HiveHIVE	https://coinmarketcap.com/currencies/hive-blockchain/	$0.87
248	BraintrustBTRST	https://coinmarketcap.com/currencies/braintrust/	$3.92
249	DigiByteDGB	https://coinmarketcap.com/currencies/digibyte/	$0.02
250	Spell TokenSPELL	https://coinmarketcap.com/currencies/spell-token/	$0.00
251	RenREN	https://coinmarketcap.com/currencies/ren/	$0.34
252	SyscoinSYS	https://coinmarketcap.com/currencies/syscoin/	$0.50
253	Trust Wallet TokenTWT	https://coinmarketcap.com/currencies/trust-wallet-token/	$1.12
254	IlluviumILV	https://coinmarketcap.com/currencies/illuvium/	$495.81
255	CEEK VRCEEK	https://coinmarketcap.com/currencies/ceek-vr/	$0.43
256	CasperCSPR	https://coinmarketcap.com/currencies/casper/	$0.07
257	Keep NetworkKEEP	https://coinmarketcap.com/currencies/keep-network/	$0.49
258	Nervos NetworkCKB	https://coinmarketcap.com/currencies/nervos-network/	$0.01
259	Perpetual ProtocolPERP	https://coinmarketcap.com/currencies/perpetual-protocol/	$4.09
260	Celer NetworkCELR	https://coinmarketcap.com/currencies/celer-network/	$0.05
261	PlayDappPLA	https://coinmarketcap.com/currencies/playdapp/	$0.84
262	Ethereum Name ServiceENS	https://coinmarketcap.com/currencies/ethereum-name-service/	$14.85
263	FluxFLUX	https://coinmarketcap.com/currencies/zel/	$1.29
264	Ocean ProtocolOCEAN	https://coinmarketcap.com/currencies/ocean-protocol/	$0.49
265	TelcoinTEL	https://coinmarketcap.com/currencies/telcoin/	$0.00
266	dYdXDYDX	https://coinmarketcap.com/currencies/dydx/	$4.32
267	DigitalBitsXDB	https://coinmarketcap.com/currencies/digitalbits/	$0.29
268	MXCMXC	https://coinmarketcap.com/currencies/mxc/	$0.10
269	WINkLinkWIN	https://coinmarketcap.com/currencies/wink/	$0.00
270	ConfluxCFX	https://coinmarketcap.com/currencies/conflux-network/	$0.16
271	PersistenceXPRT	https://coinmarketcap.com/currencies/persistence/	$2.68
272	NanoXNO	https://coinmarketcap.com/currencies/nano/	$1.96
273	LiskLSK	https://coinmarketcap.com/currencies/lisk/	$2.00
274	RaydiumRAY	https://coinmarketcap.com/currencies/raydium/	$2.54
275	InjectiveINJ	https://coinmarketcap.com/currencies/injective-protocol/	$4.51
276	UltraUOS	https://coinmarketcap.com/currencies/ultra/	$0.88
277	Coin98C98	https://coinmarketcap.com/currencies/coin98/	$1.34
278	Fetch.aiFET	https://coinmarketcap.com/currencies/fetch/	$0.33
279	Vulcan Forged PYRPYR	https://coinmarketcap.com/currencies/vulcan-forged-pyr/	$10.37
280	MX TOKENMX	https://coinmarketcap.com/currencies/mx-token/	$2.47
281	NuCypherNU	https://coinmarketcap.com/currencies/nucypher/	$0.35
282	DentDENT	https://coinmarketcap.com/currencies/dent/	$0.00
283	ChiaXCH	https://coinmarketcap.com/currencies/chia-network/	$63.21
284	Gemini DollarGUSD	https://coinmarketcap.com/currencies/gemini-dollar/	$1.00
285	Bridge OracleBRG	https://coinmarketcap.com/currencies/bridge-oracle/	$0.03
286	PowerledgerPOWR	https://coinmarketcap.com/currencies/power-ledger/	$0.48
287	ConstitutionDAOPEOPLE	https://coinmarketcap.com/currencies/constitutiondao/	$0.05
288	MediBlocMED	https://coinmarketcap.com/currencies/medibloc/	$0.04
289	Pundi X (New)PUNDIX	https://coinmarketcap.com/currencies/pundix-new/	$0.87
290	TribeTRIBE	https://coinmarketcap.com/currencies/tribe/	$0.50
291	ChromiaCHR	https://coinmarketcap.com/currencies/chromia/	$0.39
292	OrbsORBS	https://coinmarketcap.com/currencies/orbs/	$0.08
293	Origin ProtocolOGN	https://coinmarketcap.com/currencies/origin-protocol/	$0.56
294	XYOXYO	https://coinmarketcap.com/currencies/xyo/	$0.02
295	JOEJOE	https://coinmarketcap.com/currencies/joe/	$0.99
296	WazirXWRX	https://coinmarketcap.com/currencies/wazirx/	$0.56
297	COTICOTI	https://coinmarketcap.com/currencies/coti/	$0.21
298	ConstellationDAG	https://coinmarketcap.com/currencies/constellation/	$0.17
299	SuperFarmSUPER	https://coinmarketcap.com/currencies/superfarm/	$0.53
300	Ontology GasONG	https://coinmarketcap.com/currencies/ontology-gas/	$0.68
301	HEX201HEX	https://coinmarketcap.com/currencies/hex/	$0.1256
302	Lido Staked ETH202stETH	https://coinmarketcap.com/currencies/steth/	$2,853.00
303	Wrapped TRON203WTRX	https://coinmarketcap.com/currencies/wrapped-tron/	$0.06336
304	Bitcoin BEP2204BTCB	https://coinmarketcap.com/currencies/bitcoin-bep2/	$38,866.71
305	Frax205FRAX	https://coinmarketcap.com/currencies/frax/	$1.00
306	Toncoin206TON	https://coinmarketcap.com/currencies/toncoin/	$1.95
307	Wrapped BNB207WBNB	https://coinmarketcap.com/currencies/wbnb/	$392.34
308	DeFiChain208DFI	https://coinmarketcap.com/currencies/defichain/	$4.18
309	BitTorrent209BTTOLD	https://coinmarketcap.com/currencies/bittorrent/	$0.001767
310	Chain210XCN	https://coinmarketcap.com/currencies/chain/	$0.09885
311	Huobi BTCHBTC	https://coinmarketcap.com/currencies/huobi-btc/	$38817.74
312	OsmosisOSMO	https://coinmarketcap.com/currencies/osmosis/	$4.82
313	ThresholdT	https://coinmarketcap.com/currencies/threshold/	$0.10
314	SafeSAFE	https://coinmarketcap.com/currencies/safe/	$38.94
315	LINKLN	https://coinmarketcap.com/currencies/link/	$125.75
316	BitDAOBIT	https://coinmarketcap.com/currencies/bitdao/	$1.25
395	API3API3	https://coinmarketcap.com/currencies/api3/	$4.02
317	Liquity USDLUSD	https://coinmarketcap.com/currencies/liquity-usd/	$1.00
318	NXMNXM	https://coinmarketcap.com/currencies/nxm/	$96.41
319	Counos XCCXX	https://coinmarketcap.com/currencies/counos-x/	$31.14
320	Tether GoldXAUT	https://coinmarketcap.com/currencies/tether-gold/	$1905.07
321	EverscaleEVER	https://coinmarketcap.com/currencies/everscale/	$0.37
322	AstarASTR	https://coinmarketcap.com/currencies/astar/	$0.17
323	The Transfer TokenTTT	https://coinmarketcap.com/currencies/the-transfer-token/	$4.07
324	Radio CacaRACA	https://coinmarketcap.com/currencies/radio-caca/	$0.00
325	WEMIXWEMIX	https://coinmarketcap.com/currencies/wemix/	$3.36
326	HUSDHUSD	https://coinmarketcap.com/currencies/husd/	$1.00
327	WhiteCoinXWC	https://coinmarketcap.com/currencies/whitecoin/	$0.51
328	Wrapped VelasWVLX	https://coinmarketcap.com/currencies/wrapped-velas/	$0.15
329	SapphireSAPP	https://coinmarketcap.com/currencies/sapphire/	$0.64
330	VVS FinanceVVS	https://coinmarketcap.com/currencies/vvs-finance/	$0.00
331	KOKKOK	https://coinmarketcap.com/currencies/keystone-of-opportunity-knowledge/	$3.04
332	Rocket PoolRPL	https://coinmarketcap.com/currencies/rocket-pool/	$31.58
333	Lido DAOLDO	https://coinmarketcap.com/currencies/lido-dao/	$3.01
334	Pirate ChainARRR	https://coinmarketcap.com/currencies/pirate-chain/	$1.61
335	SafeMoonSAFEMOON	https://coinmarketcap.com/currencies/safemoon/	$0.00
336	ChainbingCBG	https://coinmarketcap.com/currencies/chainbing/	$9.05
337	FruitsFRTS	https://coinmarketcap.com/currencies/fruits-eco/	$0.01
338	Decentralized SocialDESO	https://coinmarketcap.com/currencies/deso/	$32.92
339	Bitpanda Ecosystem TokenBEST	https://coinmarketcap.com/currencies/bitpanda-ecosystem-token/	$0.82
340	MobileCoinMOB	https://coinmarketcap.com/currencies/mobilecoin/	$3.52
341	BiswapBSW	https://coinmarketcap.com/currencies/biswap/	$1.12
342	MapleMPL	https://coinmarketcap.com/currencies/maple/	$55.07
343	Mirrored ProShares VIXmVIXY	https://coinmarketcap.com/currencies/mirrored-proshares-vix-short-term-futures-etf/	$106.15
344	MVLMVL	https://coinmarketcap.com/currencies/mvl/	$0.01
345	HumanscapeHUM	https://coinmarketcap.com/currencies/humanscape/	$0.31
346	AuroraAURORA	https://coinmarketcap.com/currencies/aurora-near/	$9.41
347	SologenicSOLO	https://coinmarketcap.com/currencies/sologenic/	$0.53
348	BinaryXBNX	https://coinmarketcap.com/currencies/binaryx/	$103.08
349	ArdorARDR	https://coinmarketcap.com/currencies/ardor/	$0.21
350	StatusSNT	https://coinmarketcap.com/currencies/status/	$0.06
351	RequestREQ	https://coinmarketcap.com/currencies/request/	$0.21
352	Yield Guild GamesYGG	https://coinmarketcap.com/currencies/yield-guild-games/	$1.75
353	AnyswapANY	https://coinmarketcap.com/currencies/anyswap/	$10.73
354	Function XFX	https://coinmarketcap.com/currencies/function-x/	$0.48
355	Mines of DalarniaDAR	https://coinmarketcap.com/currencies/mines-of-dalarnia/	$1.04
356	MoonriverMOVR	https://coinmarketcap.com/currencies/moonriver/	$48.00
357	DiviDIVI	https://coinmarketcap.com/currencies/divi/	$0.07
358	CivicCVC	https://coinmarketcap.com/currencies/civic/	$0.28
359	DAO MakerDAO	https://coinmarketcap.com/currencies/dao-maker/	$2.64
360	MyNeighborAliceALICE	https://coinmarketcap.com/currencies/myneighboralice/	$5.99
361	MdexMDX	https://coinmarketcap.com/currencies/mdex/	$0.20
362	NumeraireNMR	https://coinmarketcap.com/currencies/numeraire/	$30.80
363	Boba NetworkBOBA	https://coinmarketcap.com/currencies/boba-network/	$1.13
364	CartesiCTSI	https://coinmarketcap.com/currencies/cartesi/	$0.32
365	LUKSOLYXe	https://coinmarketcap.com/currencies/lukso/	$11.77
366	OriginTrailTRAC	https://coinmarketcap.com/currencies/origintrail/	$0.49
367	Reserve RightsRSR	https://coinmarketcap.com/currencies/reserve-rights/	$0.01
368	MOBOXMBOX	https://coinmarketcap.com/currencies/mobox/	$2.21
369	MetisDAOMETIS	https://coinmarketcap.com/currencies/metisdao/	$59.46
370	aelfELF	https://coinmarketcap.com/currencies/aelf/	$0.32
371	MetalMTL	https://coinmarketcap.com/currencies/metal/	$2.60
372	StormXSTMX	https://coinmarketcap.com/currencies/stormx/	$0.02
373	TelosTLOS	https://coinmarketcap.com/currencies/telos/	$0.62
374	USDX [Kava]USDX	https://coinmarketcap.com/currencies/usdx-kava/	$0.97
375	VeThor TokenVTHO	https://coinmarketcap.com/currencies/vethor-token/	$0.00
376	Bitcoin Standard Hashrate TokenBTCST	https://coinmarketcap.com/currencies/btc-standard-hashrate-token/	$14.68
377	Rari Governance TokenRGT	https://coinmarketcap.com/currencies/rari-governance-token/	$13.49
378	TitanSwapTITAN	https://coinmarketcap.com/currencies/titanswap/	$3.11
379	Orbit ChainORC	https://coinmarketcap.com/currencies/orbit-chain/	$0.27
380	UFO GamingUFO	https://coinmarketcap.com/currencies/ufo-gaming/	$0.00
381	inSure DeFiSURE	https://coinmarketcap.com/currencies/insure/	$0.01
382	DeroDERO	https://coinmarketcap.com/currencies/dero/	$13.00
383	1eco1ECO	https://coinmarketcap.com/currencies/1eco/	$6.08
384	SteemSTEEM	https://coinmarketcap.com/currencies/steem/	$0.41
385	MetaheroHERO	https://coinmarketcap.com/currencies/metahero/	$0.03
386	AragonANT	https://coinmarketcap.com/currencies/aragon/	$4.00
387	ReefREEF	https://coinmarketcap.com/currencies/reef/	$0.01
388	VergeXVG	https://coinmarketcap.com/currencies/verge/	$0.01
389	OrchidOXT	https://coinmarketcap.com/currencies/orchid/	$0.23
390	XSGDXSGD	https://coinmarketcap.com/currencies/xsgd/	$0.73
391	Alpha Venture DAOALPHA	https://coinmarketcap.com/currencies/alpha-finance-lab/	$0.34
392	EllipsisEPS	https://coinmarketcap.com/currencies/ellipsis/	$0.21
393	Bifrost (BFC)BFC	https://coinmarketcap.com/currencies/bifrost/	$0.14
394	HedgeTradeHEDG	https://coinmarketcap.com/currencies/hedgetrade/	$0.43
396	HxroHXRO	https://coinmarketcap.com/currencies/hxro/	$0.35
397	iExec RLCRLC	https://coinmarketcap.com/currencies/rlc/	$1.83
398	BiconomyBICO	https://coinmarketcap.com/currencies/biconomy/	$1.19
399	Energy Web TokenEWT	https://coinmarketcap.com/currencies/energy-web-token/	$4.84
400	AugurREP	https://coinmarketcap.com/currencies/augur/	$13.22
401	Sun (New)301SUN	https://coinmarketcap.com/currencies/sun-token/	$0.01367
402	BakeryToken302BAKE	https://coinmarketcap.com/currencies/bakerytoken/	$0.7321
403	Locus Chain303LOCUS	https://coinmarketcap.com/currencies/locus-chain/	$0.16
404	Hyperion304HYN	https://coinmarketcap.com/currencies/hyperion/	$0.6826
405	Stratis305STRAX	https://coinmarketcap.com/currencies/stratis/	$1.02
406	Beta Finance306BETA	https://coinmarketcap.com/currencies/beta-finance/	$0.3536
407	ASD307ASD	https://coinmarketcap.com/currencies/bitmax-token/	$0.2013
408	STASIS EURO308EURS	https://coinmarketcap.com/currencies/stasis-euro/	$1.07
409	Prometeus309PROM	https://coinmarketcap.com/currencies/prometeus/	$8.05
410	NKN310NKN	https://coinmarketcap.com/currencies/nkn/	$0.189
411	sUSDSUSD	https://coinmarketcap.com/currencies/susd/	$1.00
412	SifChainerowan	https://coinmarketcap.com/currencies/sifchain/	$0.12
413	ArkARK	https://coinmarketcap.com/currencies/ark/	$0.96
414	GXChainGXC	https://coinmarketcap.com/currencies/gxchain/	$1.74
415	Alchemy PayACH	https://coinmarketcap.com/currencies/alchemy-pay/	$0.03
416	MangoMNGO	https://coinmarketcap.com/currencies/mango-markets/	$0.13
417	ssv.networkSSV	https://coinmarketcap.com/currencies/ssv-network/	$12.90
418	AVINOCAVINOC	https://coinmarketcap.com/currencies/avinoc/	$0.33
419	QuarkChainQKC	https://coinmarketcap.com/currencies/quarkchain/	$0.02
420	MetadiumMETA	https://coinmarketcap.com/currencies/metadium/	$0.08
421	RadicleRAD	https://coinmarketcap.com/currencies/radicle/	$4.19
422	MaidSafeCoinMAID	https://coinmarketcap.com/currencies/maidsafecoin/	$0.28
423	Akash NetworkAKT	https://coinmarketcap.com/currencies/akash-network/	$1.11
424	Standard Tokenization ProtocolSTPT	https://coinmarketcap.com/currencies/standard-tokenization-protocol/	$0.09
425	RakonRKN	https://coinmarketcap.com/currencies/rakon/	$0.51
426	PropyPRO	https://coinmarketcap.com/currencies/propy/	$1.69
427	StrikeSTRK	https://coinmarketcap.com/currencies/strike/	$39.36
428	KleverKLV	https://coinmarketcap.com/currencies/klever/	$0.04
429	Dawn ProtocolDAWN	https://coinmarketcap.com/currencies/dawn-protocol/	$1.70
430	MovieBlocMBL	https://coinmarketcap.com/currencies/moviebloc/	$0.01
431	Band ProtocolBAND	https://coinmarketcap.com/currencies/band-protocol/	$3.47
432	SingularityNETAGIX	https://coinmarketcap.com/currencies/singularitynet/	$0.12
433	SOMESINGSSX	https://coinmarketcap.com/currencies/somesing/	$0.05
434	ErgoERG	https://coinmarketcap.com/currencies/ergo/	$3.69
435	LiquityLQTY	https://coinmarketcap.com/currencies/liquity/	$1.70
436	Dusk NetworkDUSK	https://coinmarketcap.com/currencies/dusk-network/	$0.30
437	VenusXVS	https://coinmarketcap.com/currencies/venus/	$9.68
438	FUNTokenFUN	https://coinmarketcap.com/currencies/funtoken/	$0.01
439	RMRKRMRK	https://coinmarketcap.com/currencies/rmrk/	$12.07
440	Mask NetworkMASK	https://coinmarketcap.com/currencies/mask-network/	$3.94
441	CENNZnetCENNZ	https://coinmarketcap.com/currencies/centrality/	$0.09
442	World Mobile TokenWMT	https://coinmarketcap.com/currencies/world-mobile-token/	$0.46
443	Dvision NetworkDVI	https://coinmarketcap.com/currencies/dvision-network/	$0.34
444	RSK Infrastructure FrameworkRIF	https://coinmarketcap.com/currencies/rsk-infrastructure-framework/	$0.13
445	AavegotchiGHST	https://coinmarketcap.com/currencies/aavegotchi/	$1.87
446	DeversiFiDVF	https://coinmarketcap.com/currencies/deversifi/	$4.63
447	BloktopiaBLOK	https://coinmarketcap.com/currencies/bloktopia/	$0.01
448	Sport and LeisureSNL	https://coinmarketcap.com/currencies/sport-and-leisure/	$0.16
449	PolkastarterPOLS	https://coinmarketcap.com/currencies/polkastarter/	$1.19
450	PlatONLAT	https://coinmarketcap.com/currencies/platon/	$0.05
451	QredoQRDO	https://coinmarketcap.com/currencies/qredo/	$1.86
452	EnzymeMLN	https://coinmarketcap.com/currencies/enzyme/	$52.52
453	UtrustUTK	https://coinmarketcap.com/currencies/utrust/	$0.23
454	Hoo TokenHOO	https://coinmarketcap.com/currencies/hoo-token/	$1.33
455	EveripediaIQ	https://coinmarketcap.com/currencies/everipedia/	$0.01
456	AdsharesADS	https://coinmarketcap.com/currencies/adshares/	$4.30
457	OpenDAOSOS	https://coinmarketcap.com/currencies/opendao/	$0.00
458	Badger DAOBADGER	https://coinmarketcap.com/currencies/badger-dao/	$8.39
459	JasmyCoinJASMY	https://coinmarketcap.com/currencies/jasmy/	$0.02
460	TrueFiTRU	https://coinmarketcap.com/currencies/truefi-token/	$0.19
461	KardiaChainKAI	https://coinmarketcap.com/currencies/kardiachain/	$0.03
462	ProtonXPR	https://coinmarketcap.com/currencies/proton/	$0.01
463	VeritaseumVERI	https://coinmarketcap.com/currencies/veritaseum/	$47.97
464	Venus USDCvUSDC	https://coinmarketcap.com/currencies/venus-usdc/	$0.02
465	TomoChainTOMO	https://coinmarketcap.com/currencies/tomochain/	$1.13
466	BalancerBAL	https://coinmarketcap.com/currencies/balancer/	$14.74
467	GensoKishi MetaverseMV	https://coinmarketcap.com/currencies/gensokishis-metaverse/	$1.30
468	Freeway TokenFWT	https://coinmarketcap.com/currencies/freeway-token/	$0.02
469	ABBC CoinABBC	https://coinmarketcap.com/currencies/abbc-coin/	$0.10
470	StarlinkSTARL	https://coinmarketcap.com/currencies/star-link/	$0.00
471	Shapeshift FOX TokenFOX	https://coinmarketcap.com/currencies/fox-token/	$0.33
472	YooShiYOOSHI	https://coinmarketcap.com/currencies/yooshi/	$0.00
473	SperaxSPA	https://coinmarketcap.com/currencies/sperax/	$0.13
474	Orion ProtocolORN	https://coinmarketcap.com/currencies/orion-protocol/	$2.86
475	AmpleforthAMPL	https://coinmarketcap.com/currencies/ampleforth/	$1.16
476	MarlinPOND	https://coinmarketcap.com/currencies/marlin/	$0.02
477	Beefy FinanceBIFI	https://coinmarketcap.com/currencies/beefy-finance/	$1348.55
478	CentrifugeCFG	https://coinmarketcap.com/currencies/centrifuge/	$0.43
479	Mirror ProtocolMIR	https://coinmarketcap.com/currencies/mirror-protocol/	$1.23
480	CratosCRTS	https://coinmarketcap.com/currencies/cratos/	$0.00
481	HathorHTR	https://coinmarketcap.com/currencies/hathor/	$0.41
482	XCAD NetworkXCAD	https://coinmarketcap.com/currencies/xcad-network/	$3.87
483	DEAPcoinDEP	https://coinmarketcap.com/currencies/deapcoin/	$0.02
484	Victoria VRVR	https://coinmarketcap.com/currencies/victoria-vr/	$0.13
485	DeFi Pulse IndexDPI	https://coinmarketcap.com/currencies/defi-pulse-index/	$166.91
486	e-RadixEXRD	https://coinmarketcap.com/currencies/radix/	$0.13
487	AlitasALT	https://coinmarketcap.com/currencies/alitas/	$1.53
488	RSK Smart BitcoinRBTC	https://coinmarketcap.com/currencies/rsk-smart-bitcoin/	$38741.74
489	dKargoDKA	https://coinmarketcap.com/currencies/dkargo/	$0.09
490	Wilder WorldWILD	https://coinmarketcap.com/currencies/wilder-world/	$1.07
491	UnibrightUBT	https://coinmarketcap.com/currencies/unibright/	$0.61
492	IDEXIDEX	https://coinmarketcap.com/currencies/idex/	$0.14
493	AIOZ NetworkAIOZ	https://coinmarketcap.com/currencies/aioz-network/	$0.17
494	ElectroneumETN	https://coinmarketcap.com/currencies/electroneum/	$0.01
495	MimbleWimbleCoinMWC	https://coinmarketcap.com/currencies/mimblewimblecoin/	$8.22
496	HUNTHUNT	https://coinmarketcap.com/currencies/hunt/	$0.80
497	STAKESTAKE	https://coinmarketcap.com/currencies/xdai/	$10.40
498	Origin DollarOUSD	https://coinmarketcap.com/currencies/origin-dollar/	$1.00
499	AlchemixALCX	https://coinmarketcap.com/currencies/alchemix/	$69.02
500	Decentral GamesDG	https://coinmarketcap.com/currencies/decentral-games/	$0.17
501	Aergo401AERGO	https://coinmarketcap.com/currencies/aergo/	$0.235
502	Neutrino Token402NSBT	https://coinmarketcap.com/currencies/neutrino-system-base-token/	$33.13
503	LCX403LCX	https://coinmarketcap.com/currencies/lcx/	$0.1126
504	Wanchain404WAN	https://coinmarketcap.com/currencies/wanchain/	$0.4413
505	TrustSwap405SWAP	https://coinmarketcap.com/currencies/trustswap/	$0.872
506	Nestree406EGG	https://coinmarketcap.com/currencies/nestree/	$0.03415
507	Voxies407VOXEL	https://coinmarketcap.com/currencies/voxies/	$1.31
508	Deeper Network408DPR	https://coinmarketcap.com/currencies/deeper-network/	$0.06719
509	ThunderCore409TT	https://coinmarketcap.com/currencies/thundercore/	$0.009676
510	Ampleforth Governance Token410FORTH	https://coinmarketcap.com/currencies/ampleforth-governance-token/	$5.44
511	SpookySwapBOO	https://coinmarketcap.com/currencies/spookyswap/	$8.77
512	Seedify.fundSFUND	https://coinmarketcap.com/currencies/seedify-fund/	$3.36
513	Merit CircleMC	https://coinmarketcap.com/currencies/merit-circle/	$1.92
514	Linear FinanceLINA	https://coinmarketcap.com/currencies/linear/	$0.02
515	Alien WorldsTLM	https://coinmarketcap.com/currencies/alien-worlds/	$0.09
516	CertiKCTK	https://coinmarketcap.com/currencies/certik/	$1.12
517	Loom NetworkLOOM	https://coinmarketcap.com/currencies/loom-network/	$0.08
518	VerasityVRA	https://coinmarketcap.com/currencies/verasity/	$0.02
519	SafePalSFP	https://coinmarketcap.com/currencies/safepal/	$0.75
520	Hifi FinanceMFT	https://coinmarketcap.com/currencies/mainframe/	$0.01
521	CLVCLV	https://coinmarketcap.com/currencies/clover/	$0.31
522	ZB TokenZB	https://coinmarketcap.com/currencies/zb-token/	$0.17
523	AuroryAURY	https://coinmarketcap.com/currencies/aurory/	$8.31
524	Ankr Reward Bearing Staked ETHaETHc	https://coinmarketcap.com/currencies/ankreth/	$2715.55
525	Alpaca FinanceALPACA	https://coinmarketcap.com/currencies/alpaca-finance/	$0.55
526	Wirex TokenWXT	https://coinmarketcap.com/currencies/wirex-token/	$0.01
527	PlatonCoinPLTC	https://coinmarketcap.com/currencies/platoncoin/	$0.72
528	ARPA ChainARPA	https://coinmarketcap.com/currencies/arpa-chain/	$0.06
529	SplintershardsSPS	https://coinmarketcap.com/currencies/splintershards/	$0.12
530	GitcoinGTC	https://coinmarketcap.com/currencies/gitcoin/	$5.49
531	Haven ProtocolXHV	https://coinmarketcap.com/currencies/haven-protocol/	$3.22
532	PhantasmaSOUL	https://coinmarketcap.com/currencies/phantasma/	$0.73
533	Smooth Love PotionSLP	https://coinmarketcap.com/currencies/smooth-love-potion/	$0.01
534	KeeperDAOROOK	https://coinmarketcap.com/currencies/keeperdao/	$124.76
535	Vectorspace AIVXV	https://coinmarketcap.com/currencies/vectorspace-ai/	$1.86
536	Celo DollarCUSD	https://coinmarketcap.com/currencies/celo-dollar/	$0.99
537	Phala NetworkPHA	https://coinmarketcap.com/currencies/phala-network/	$0.27
538	Toko TokenTKO	https://coinmarketcap.com/currencies/tokocrypto/	$0.67
539	CarryCRE	https://coinmarketcap.com/currencies/carry/	$0.01
540	Adventure GoldAGLD	https://coinmarketcap.com/currencies/adventure-gold/	$1.03
541	Keep3rV1KP3R	https://coinmarketcap.com/currencies/keep3rv1/	$360.66
542	cVault.financeCORE	https://coinmarketcap.com/currencies/cvault-finance/	$7179.08
543	Uquid CoinUQC	https://coinmarketcap.com/currencies/uquid-coin/	$7.18
544	Thetan ArenaTHG	https://coinmarketcap.com/currencies/thetan-arena/	$0.63
545	CovalentCQT	https://coinmarketcap.com/currencies/covalent/	$0.28
546	Terra Virtua KolectTVK	https://coinmarketcap.com/currencies/terra-virtua-kolect/	$0.10
547	Alethea Artificial Liquid Intelligence TokenALI	https://coinmarketcap.com/currencies/alethea-artificial-liquid-intelligence-token/	$0.06
548	SovrynSOV	https://coinmarketcap.com/currencies/sovryn/	$3.28
549	SyntropyNOIA	https://coinmarketcap.com/currencies/syntropy/	$0.12
550	PECULIUM (old)PCL	https://coinmarketcap.com/currencies/peculium/	$0.03
551	PEAKDEFIPEAK	https://coinmarketcap.com/currencies/peakdefi/	$0.05
552	ChimpionBNANA	https://coinmarketcap.com/currencies/chimpion/	$2.15
553	Wrapped NCG (Nine Chronicles Gold)WNCG	https://coinmarketcap.com/currencies/wrapped-ncg/	$0.57
554	Alpha Quark TokenAQT	https://coinmarketcap.com/currencies/alpha-quark-token/	$2.58
555	DFI.MoneyYFII	https://coinmarketcap.com/currencies/yearn-finance-ii/	$1726.70
556	TROYTROY	https://coinmarketcap.com/currencies/troy/	$0.01
557	Moss CoinMOC	https://coinmarketcap.com/currencies/moss-coin/	$0.18
558	HydraHYDRA	https://coinmarketcap.com/currencies/hydra/	$7.67
559	ONUSONUS	https://coinmarketcap.com/currencies/onus/	$0.67
560	HIHI	https://coinmarketcap.com/currencies/hi-dollar/	$0.13
561	EfforceWOZX	https://coinmarketcap.com/currencies/efforce/	$0.12
562	Efinity TokenEFI	https://coinmarketcap.com/currencies/efinity/	$0.38
563	Alpine F1 Team Fan TokenALPINE	https://coinmarketcap.com/currencies/alpine-f1-team-fan-token/	$5.70
564	IRISnetIRIS	https://coinmarketcap.com/currencies/irisnet/	$0.05
565	HandshakeHNS	https://coinmarketcap.com/currencies/handshake/	$0.13
566	KomodoKMD	https://coinmarketcap.com/currencies/komodo/	$0.49
567	CONUNCON	https://coinmarketcap.com/currencies/conun/	$0.02
568	BitSharesBTS	https://coinmarketcap.com/currencies/bitshares/	$0.02
569	Bitcoin DiamondBCD	https://coinmarketcap.com/currencies/bitcoin-diamond/	$0.34
570	VeloVELO	https://coinmarketcap.com/currencies/velo/	$0.05
571	GMT TokenGMT	https://coinmarketcap.com/currencies/gomining-token/	$0.24
572	Cobak TokenCBK	https://coinmarketcap.com/currencies/cobak-token/	$2.10
573	League of Kingdoms ArenaLOKA	https://coinmarketcap.com/currencies/league-of-kingdoms/	$2.49
574	MiL.kMLK	https://coinmarketcap.com/currencies/milk-alliance/	$0.80
575	Travala.comAVA	https://coinmarketcap.com/currencies/travala/	$1.22
576	QcashQC	https://coinmarketcap.com/currencies/qcash/	$0.13
577	BioPassport TokenBIOT	https://coinmarketcap.com/currencies/biopassport-token/	$0.04
578	Harvest FinanceFARM	https://coinmarketcap.com/currencies/harvest-finance/	$91.43
579	XMONXMON	https://coinmarketcap.com/currencies/xmon/	$41253.99
580	Kava LendHARD	https://coinmarketcap.com/currencies/hard-protocol/	$0.52
581	ZEONZEON	https://coinmarketcap.com/currencies/zeon/	$0.00
582	PresearchPRE	https://coinmarketcap.com/currencies/presearch/	$0.15
583	district0xDNT	https://coinmarketcap.com/currencies/district0x/	$0.10
584	EverRiseRISE	https://coinmarketcap.com/currencies/everrise/	$0.00
585	Boson ProtocolBOSON	https://coinmarketcap.com/currencies/boson-protocol/	$0.78
586	bZx ProtocolBZRX	https://coinmarketcap.com/currencies/bzx-protocol/	$0.14
587	Morpheus.NetworkMNW	https://coinmarketcap.com/currencies/morpheus-network/	$1.27
588	LTO NetworkLTO	https://coinmarketcap.com/currencies/lto-network/	$0.19
589	Sentinel ProtocolUPP	https://coinmarketcap.com/currencies/sentinel-protocol/	$0.13
590	RefereumRFR	https://coinmarketcap.com/currencies/refereum/	$0.01
591	EthernityERN	https://coinmarketcap.com/currencies/ethernity-chain/	$4.34
592	SwarmBZZ	https://coinmarketcap.com/currencies/ethereum-swarm/	$1.18
593	Kava SwapSWP	https://coinmarketcap.com/currencies/kava-swap/	$1.73
594	Automata NetworkATA	https://coinmarketcap.com/currencies/automata-network/	$0.34
595	ContentosCOS	https://coinmarketcap.com/currencies/contentos/	$0.01
596	Venus BUSDvBUSD	https://coinmarketcap.com/currencies/venus-busd/	$0.02
597	DADDAD	https://coinmarketcap.com/currencies/dad/	$0.13
598	SuperRareRARE	https://coinmarketcap.com/currencies/superrare/	$0.57
599	Circuits of ValueCOVAL	https://coinmarketcap.com/currencies/circuits-of-value/	$0.03
600	RIZONATOLO	https://coinmarketcap.com/currencies/rizon-blockchain/	$0.03
601	Vega Protocol501VEGA	https://coinmarketcap.com/currencies/vegaprotocol/	$3.60
602	Molecular Future502MOF	https://coinmarketcap.com/currencies/molecular-future/	$0.00113
603	DerivaDAO503DDX	https://coinmarketcap.com/currencies/derivadao/	$2.16
604	MonaCoin504MONA	https://coinmarketcap.com/currencies/monacoin/	$0.8572
605	RFOX505RFOX	https://coinmarketcap.com/currencies/redfox-labs/	$0.04272
606	Flamingo506FLM	https://coinmarketcap.com/currencies/flamingo/	$0.1785
607	BabySwap507BABY	https://coinmarketcap.com/currencies/babyswap/	$0.2788
608	VerusCoin508VRSC	https://coinmarketcap.com/currencies/veruscoin/	$0.8161
609	Samoyedcoin509SAMO	https://coinmarketcap.com/currencies/samoyedcoin/	$0.0167
610	NEST Protocol510NEST	https://coinmarketcap.com/currencies/nest-protocol/	$0.02752
611	Somnium Space CubesCUBE	https://coinmarketcap.com/currencies/somnium-space-cubes/	$4.41
612	Darma CashDMCH	https://coinmarketcap.com/currencies/darma-cash/	$0.25
613	ElastosELA	https://coinmarketcap.com/currencies/elastos/	$2.69
614	ElitiumEUM	https://coinmarketcap.com/currencies/elitium/	$1.95
615	GlitzKoinGTN	https://coinmarketcap.com/currencies/glitzkoin/	$0.22
616	CUDOSCUDOS	https://coinmarketcap.com/currencies/cudos/	$0.02
617	PeonyPNY	https://coinmarketcap.com/currencies/peony/	$0.26
618	VaiVAI	https://coinmarketcap.com/currencies/vai/	$0.94
619	QuickSwapQUICK	https://coinmarketcap.com/currencies/quickswap/	$164.74
620	GuildFiGF	https://coinmarketcap.com/currencies/guildfi/	$1.27
621	DIADIA	https://coinmarketcap.com/currencies/dia/	$0.81
622	RichQUACK.comQUACK	https://coinmarketcap.com/currencies/richquack-com/	$0.00
623	Aleph.imALEPH	https://coinmarketcap.com/currencies/aleph-im/	$0.26
624	KinKIN	https://coinmarketcap.com/currencies/kin/	$0.00
625	Ribbon FinanceRBN	https://coinmarketcap.com/currencies/ribbon-finance/	$0.93
626	Rai Reflex IndexRAI	https://coinmarketcap.com/currencies/rai/	$3.02
627	StreamrDATA	https://coinmarketcap.com/currencies/streamr/	$0.07
628	BitMart TokenBMX	https://coinmarketcap.com/currencies/bitmart-token/	$0.30
629	ZelwinZLW	https://coinmarketcap.com/currencies/zelwin/	$0.70
630	Marinade Staked SOLMSOL	https://coinmarketcap.com/currencies/marinade/	$102.14
631	ZEONZEON	https://coinmarketcap.com/currencies/zeon/	$0.00
632	Tornado CashTORN	https://coinmarketcap.com/currencies/torn/	$46.01
633	Ambire AdExADX	https://coinmarketcap.com/currencies/adx-net/	$0.35
634	XDEFI WalletXDEFI	https://coinmarketcap.com/currencies/xdefi-wallet/	$0.91
635	MANTRA DAOOM	https://coinmarketcap.com/currencies/mantra-dao/	$0.11
636	HighstreetHIGH	https://coinmarketcap.com/currencies/highstreet/	$4.11
637	TranchessCHESS	https://coinmarketcap.com/currencies/tranchess/	$0.68
638	GenopetsGENE	https://coinmarketcap.com/currencies/genopets/	$13.54
639	TokenPocketTPT	https://coinmarketcap.com/currencies/tokenpocket/	$0.01
640	Cocos-BCXCOCOS	https://coinmarketcap.com/currencies/cocos-bcx/	$1.18
641	RaribleRARI	https://coinmarketcap.com/currencies/rarible/	$6.92
642	GroestlcoinGRS	https://coinmarketcap.com/currencies/groestlcoin/	$0.61
643	Super Zero ProtocolSERO	https://coinmarketcap.com/currencies/super-zero-protocol/	$0.14
644	DeRaceDERC	https://coinmarketcap.com/currencies/derace/	$1.00
645	KILT ProtocolKILT	https://coinmarketcap.com/currencies/kiltprotocol/	$0.99
646	Assemble ProtocolASM	https://coinmarketcap.com/currencies/assemble-protocol/	$0.04
647	SingularityDAOSDAO	https://coinmarketcap.com/currencies/singularitydao/	$1.25
648	FIO ProtocolFIO	https://coinmarketcap.com/currencies/fio-protocol/	$0.10
649	PolySwarmNCT	https://coinmarketcap.com/currencies/polyswarm/	$0.03
650	MaroMARO	https://coinmarketcap.com/currencies/maro/	$0.07
651	Wrapped NXMWNXM	https://coinmarketcap.com/currencies/wrapped-nxm/	$28.14
652	CortexCTXC	https://coinmarketcap.com/currencies/cortex/	$0.24
653	GasGAS	https://coinmarketcap.com/currencies/gas/	$4.58
654	QuantstampQSP	https://coinmarketcap.com/currencies/quantstamp/	$0.06
655	BarnBridgeBOND	https://coinmarketcap.com/currencies/barnbridge/	$7.03
656	Grid+GRID	https://coinmarketcap.com/currencies/grid/	$1.16
657	BluzelleBLZ	https://coinmarketcap.com/currencies/bluzelle/	$0.14
658	Steem DollarsSBD	https://coinmarketcap.com/currencies/steem-dollars/	$4.08
659	CrabadaCRA	https://coinmarketcap.com/currencies/crabada/	$0.45
660	BoringDAOBOR	https://coinmarketcap.com/currencies/boringdao/	$312.71
661	Shiden NetworkSDN	https://coinmarketcap.com/currencies/shiden-network/	$0.85
662	Star AtlasATLAS	https://coinmarketcap.com/currencies/star-atlas/	$0.02
663	OneLedgerOLT	https://coinmarketcap.com/currencies/oneledger/	$0.09
664	NFTXNFTX	https://coinmarketcap.com/currencies/nftx/	$108.19
665	AMO CoinAMO	https://coinmarketcap.com/currencies/amo-coin/	$0.00
666	FirmaChainFCT,FCT2	https://coinmarketcap.com/currencies/firmachain/	$0.13
667	CoinEx TokenCET	https://coinmarketcap.com/currencies/coinex-token/	$0.06
668	Venus XVSvXVS	https://coinmarketcap.com/currencies/venus-xvs/	$0.19
669	LitentryLIT	https://coinmarketcap.com/currencies/litentry/	$1.25
670	AllianceBlockALBT	https://coinmarketcap.com/currencies/allianceblock/	$0.19
671	SIXSIX	https://coinmarketcap.com/currencies/six/	$0.16
672	Manchester City Fan TokenCITY	https://coinmarketcap.com/currencies/manchester-city-fan-token/	$12.31
673	FLETAFLETA	https://coinmarketcap.com/currencies/fleta/	$0.02
674	WHALEWHALE	https://coinmarketcap.com/currencies/whale/	$5.34
675	RChainREV	https://coinmarketcap.com/currencies/rchain/	$0.07
676	TellorTRB	https://coinmarketcap.com/currencies/tellor/	$18.26
677	HyperDAOHDAO	https://coinmarketcap.com/currencies/hyperdao/	$0.01
678	MixMarvelMIX	https://coinmarketcap.com/currencies/mixmarvel/	$0.01
679	FiroFIRO	https://coinmarketcap.com/currencies/firo/	$3.21
680	Tokenlon Network TokenLON	https://coinmarketcap.com/currencies/tokenlon-network-token/	$0.95
681	XeniosCoinXNC	https://coinmarketcap.com/currencies/xenioscoin/	$0.55
682	KlerosPNK	https://coinmarketcap.com/currencies/kleros/	$0.07
683	AXELAXEL	https://coinmarketcap.com/currencies/axel/	$0.15
684	FrontierFRONT	https://coinmarketcap.com/currencies/frontier/	$0.48
685	AionAION	https://coinmarketcap.com/currencies/aion/	$0.08
686	DeFineDFA	https://coinmarketcap.com/currencies/define/	$0.74
687	NULSNULS	https://coinmarketcap.com/currencies/nuls/	$0.42
688	RAMPRAMP	https://coinmarketcap.com/currencies/ramp/	$0.09
689	mStable USDMUSD	https://coinmarketcap.com/currencies/mstable-usd/	$1.00
690	DODODODO	https://coinmarketcap.com/currencies/dodo/	$0.37
691	Ooki ProtocolOOKI	https://coinmarketcap.com/currencies/ooki-protocol/	$0.01
692	ApolloXAPX	https://coinmarketcap.com/currencies/apollox/	$0.08
693	X World GamesXWG	https://coinmarketcap.com/currencies/x-world-games/	$0.03
694	PARSIQPRQ	https://coinmarketcap.com/currencies/parsiq/	$0.26
695	AkropolisAKRO	https://coinmarketcap.com/currencies/akropolis/	$0.01
696	MAP ProtocolMAP	https://coinmarketcap.com/currencies/map-protocol/	$0.02
697	ONBUFFONIT	https://coinmarketcap.com/currencies/onbuff/	$0.14
698	NewYork ExchangeNYE	https://coinmarketcap.com/currencies/newyork-exchange/	$5.47
699	SelfKeyKEY	https://coinmarketcap.com/currencies/selfkey/	$0.01
700	Chrono.techTIME	https://coinmarketcap.com/currencies/chrono-tech/	$54.46
701	Position Exchange601POSI	https://coinmarketcap.com/currencies/position-exchange/	$0.7624
702	Bella Protocol602BEL	https://coinmarketcap.com/currencies/bella-protocol/	$0.8035
703	CoinLoan603CLT	https://coinmarketcap.com/currencies/coinloan/	$19.75
704	Newscrypto604NWC	https://coinmarketcap.com/currencies/newscrypto/	$0.2545
705	Zenon605ZNN	https://coinmarketcap.com/currencies/zenon/	$6.04
706	AnimalGo606GOM2	https://coinmarketcap.com/currencies/animalgo/	$0.03881
707	Energi607NRG	https://coinmarketcap.com/currencies/energi/	$0.7085
708	StaFi608FIS	https://coinmarketcap.com/currencies/stafi/	$0.608
709	DXdao609DXD	https://coinmarketcap.com/currencies/dxdao/	$741.76
710	Civilization610CIV	https://coinmarketcap.com/currencies/civilization/	$0.1219
711	Measurable Data TokenMDT	https://coinmarketcap.com/currencies/measurable-data-token/	$0.05
712	MetronomeMET	https://coinmarketcap.com/currencies/metronome/	$2.61
713	KaruraKAR	https://coinmarketcap.com/currencies/karura/	$1.27
714	AeternityAE	https://coinmarketcap.com/currencies/aeternity/	$0.10
715	Bloomzed Loyalty Club TicketBLCT	https://coinmarketcap.com/currencies/bloomzed-token/	$0.95
716	MEVerseMEV	https://coinmarketcap.com/currencies/meverse/	$0.02
717	Impossible Finance LaunchpadIDIA	https://coinmarketcap.com/currencies/impossible-decentralized-incubator-access/	$0.79
718	StarTerraSTT	https://coinmarketcap.com/currencies/starterra/	$1.23
719	ICHIICHI	https://coinmarketcap.com/currencies/ichi/	$7.65
720	AhaTokenAHT	https://coinmarketcap.com/currencies/ahatoken/	$0.01
721	BytomBTM	https://coinmarketcap.com/currencies/bytom/	$0.02
722	Paris Saint-Germain Fan TokenPSG	https://coinmarketcap.com/currencies/paris-saint-germain-fan-token/	$11.24
723	Revolution PopuliRVP	https://coinmarketcap.com/currencies/revolution-populi/	$0.03
724	LATOKENLA	https://coinmarketcap.com/currencies/latoken/	$0.09
725	Drep [new]DREP	https://coinmarketcap.com/currencies/drep-new/	$0.86
726	BeamBEAM	https://coinmarketcap.com/currencies/beam/	$0.30
727	Gemma Extending TechGXT	https://coinmarketcap.com/currencies/gemma-extending-tech/	$0.41
728	YIELD AppYLD	https://coinmarketcap.com/currencies/yield-app/	$0.22
729	ZIMBOCASHZASH	https://coinmarketcap.com/currencies/zimbocash/	$0.02
730	yOUcashYOUC	https://coinmarketcap.com/currencies/youcash/	$0.00
731	Cere NetworkCERE	https://coinmarketcap.com/currencies/cere-network/	$0.02
732	DotmoovsMOOV	https://coinmarketcap.com/currencies/dotmoovs/	$0.07
733	MithrilMITH	https://coinmarketcap.com/currencies/mithril/	$0.03
734	BSCPADBSCPAD	https://coinmarketcap.com/currencies/bscpad/	$0.42
735	MAPSMAPS	https://coinmarketcap.com/currencies/maps/	$0.77
736	InsurAceINSUR	https://coinmarketcap.com/currencies/insurace/	$0.74
737	GameFiGAFI	https://coinmarketcap.com/currencies/gamefi/	$32.61
738	BTSEBTSE	https://coinmarketcap.com/currencies/btse/	$7.51
739	WaltonchainWTC	https://coinmarketcap.com/currencies/waltonchain/	$0.41
740	ValobitVBIT	https://coinmarketcap.com/currencies/valobit/	$0.03
741	SOLVESOLVE	https://coinmarketcap.com/currencies/solve/	$0.07
742	ApeSwapBANANA	https://coinmarketcap.com/currencies/apeswap-finance/	$0.31
743	NamecoinNMC	https://coinmarketcap.com/currencies/namecoin/	$2.19
744	Venus USDTvUSDT	https://coinmarketcap.com/currencies/venus-usdt/	$0.02
745	SaitoSAITO	https://coinmarketcap.com/currencies/saito/	$0.03
746	Bitrue CoinBTR	https://coinmarketcap.com/currencies/bitrue-coin/	$0.24
747	New BitSharesNBS	https://coinmarketcap.com/currencies/new-bitshares/	$0.01
748	OxenOXEN	https://coinmarketcap.com/currencies/oxen/	$0.55
749	UniftyNIF	https://coinmarketcap.com/currencies/unifty/	$18.12
750	Lattice TokenLTX	https://coinmarketcap.com/currencies/lattice-token/	$1.09
751	Star Atlas DAOPOLIS	https://coinmarketcap.com/currencies/star-atlas-polis/	$1.43
752	Numbers ProtocolNUM	https://coinmarketcap.com/currencies/numbers-protocol/	$0.30
753	FC Porto Fan TokenPORTO	https://coinmarketcap.com/currencies/fc-porto/	$3.94
754	KryllKRL	https://coinmarketcap.com/currencies/kryll/	$0.80
755	S.S. Lazio Fan TokenLAZIO	https://coinmarketcap.com/currencies/lazio-fan-token/	$3.56
756	HOPRHOPR	https://coinmarketcap.com/currencies/hopr/	$0.18
757	MATHMATH	https://coinmarketcap.com/currencies/math/	$0.26
758	FusionFSN	https://coinmarketcap.com/currencies/fusion/	$0.42
759	CrypteriumCRPT	https://coinmarketcap.com/currencies/crpt/	$0.37
760	UltiledgerULT	https://coinmarketcap.com/currencies/ultiledger/	$0.01
761	GiftoGTO	https://coinmarketcap.com/currencies/gifto/	$0.04
762	RAI FinanceSOFI	https://coinmarketcap.com/currencies/rai-finance-sofi/	$0.15
763	BASICBASIC	https://coinmarketcap.com/currencies/basic/	$0.00
764	SHPINGSHPING	https://coinmarketcap.com/currencies/shping/	$0.02
765	BTU ProtocolBTU	https://coinmarketcap.com/currencies/btu-protocol/	$0.33
766	CargoXCXO	https://coinmarketcap.com/currencies/cargox/	$0.14
767	AuroxURUS	https://coinmarketcap.com/currencies/urus/	$56.36
768	DxChain TokenDX	https://coinmarketcap.com/currencies/dxchain-token/	$0.00
769	TerraKRWKRT	https://coinmarketcap.com/currencies/terra-krw/	$0.00
770	DeXeDEXE	https://coinmarketcap.com/currencies/dexe/	$6.16
771	BOSAGORABOA	https://coinmarketcap.com/currencies/bosagora/	$0.10
772	ReserveRSV	https://coinmarketcap.com/currencies/reserve/	$1.00
773	Bounce Finance Governance TokenAUCTION	https://coinmarketcap.com/currencies/bounce-token/	$13.78
774	dForceDF	https://coinmarketcap.com/currencies/dforce/	$0.07
775	USDKUSDK	https://coinmarketcap.com/currencies/usdk/	$1.00
776	Hermez NetworkHEZ	https://coinmarketcap.com/currencies/hermez-network/	$5.95
777	MileVerseMVC	https://coinmarketcap.com/currencies/mileverse/	$0.01
778	RainicornRAINI	https://coinmarketcap.com/currencies/rainicorn/	$0.06
779	v.systemsVSYS	https://coinmarketcap.com/currencies/v-systems/	$0.01
780	SentinelDVPN	https://coinmarketcap.com/currencies/sentinel/	$0.00
781	RubicRBC	https://coinmarketcap.com/currencies/rubic/	$0.25
782	Burger SwapBURGER	https://coinmarketcap.com/currencies/burger-swap/	$1.30
783	DockDOCK	https://coinmarketcap.com/currencies/dock/	$0.03
784	e-MoneyNGM	https://coinmarketcap.com/currencies/e-money-coin/	$1.34
785	Invictus Hyperion FundIHF	https://coinmarketcap.com/currencies/invictus-hyperion-fund/	$0.23
786	WaykiChainWICC	https://coinmarketcap.com/currencies/waykichain/	$0.13
787	Mirrored iShares Gold TrustmIAU	https://coinmarketcap.com/currencies/mirrored-ishares-gold-trust/	$23.40
788	MetacraftMCT	https://coinmarketcap.com/currencies/metacraft/	$0.50
789	DEXToolsDEXT	https://coinmarketcap.com/currencies/dextools/	$0.27
790	NimiqNIM	https://coinmarketcap.com/currencies/nimiq/	$0.00
791	PowerPoolCVP	https://coinmarketcap.com/currencies/powerpool/	$0.71
792	QASHQASH	https://coinmarketcap.com/currencies/qash/	$0.07
793	pNetworkPNT	https://coinmarketcap.com/currencies/pnetwork/	$0.51
794	GoChainGO	https://coinmarketcap.com/currencies/gochain/	$0.02
795	TABOO TOKENTABOO	https://coinmarketcap.com/currencies/taboo-token/	$0.00
796	Cream FinanceCREAM	https://coinmarketcap.com/currencies/cream-finance/	$40.99
797	QuiztokQTCON	https://coinmarketcap.com/currencies/quiztok/	$0.01
798	PolkadexPDEX	https://coinmarketcap.com/currencies/polkadex/	$4.20
799	Zebec ProtocolZBC	https://coinmarketcap.com/currencies/zebec-protocol/	$0.04
800	EverestID	https://coinmarketcap.com/currencies/everest/	$0.21
801	Dego Finance701DEGO	https://coinmarketcap.com/currencies/dego-finance/	$2.90
802	Everest702ID	https://coinmarketcap.com/currencies/everest/	$0.2137
803	Edgeware703EDG	https://coinmarketcap.com/currencies/edgeware/	$0.00405
804	SUKU704SUKU	https://coinmarketcap.com/currencies/suku/	$0.2087
805	ForTube705FOR	https://coinmarketcap.com/currencies/the-force-protocol/	$0.03876
806	Bytecoin706BCN	https://coinmarketcap.com/currencies/bytecoin-bcn/	$0.000133
807	PearDAO707PEX	https://coinmarketcap.com/currencies/peardao/	$0.4663
808	Student Coin708STC	https://coinmarketcap.com/currencies/student-coin/	$0.004565
809	GET Protocol709GET	https://coinmarketcap.com/currencies/get-protocol/	$2.11
810	The Midas Touch Gold710TMTG	https://coinmarketcap.com/currencies/the-midas-touch-gold/	$0.002697
811	POA NetworkPOA	https://coinmarketcap.com/currencies/poa/	$0.08
812	CounterpartyXCP	https://coinmarketcap.com/currencies/counterparty/	$9.08
813	Gods UnchainedGODS	https://coinmarketcap.com/currencies/gods-unchained/	$1.00
814	DovuDOV	https://coinmarketcap.com/currencies/dovu/	$0.03
815	BEPRO NetworkBEPRO	https://coinmarketcap.com/currencies/bepro-network/	$0.00
816	Electric Vehicle ZoneEVZ	https://coinmarketcap.com/currencies/electric-vehicle-zone/	$0.05
817	VITEVITE	https://coinmarketcap.com/currencies/vite/	$0.05
818	LosslessLSS	https://coinmarketcap.com/currencies/lossless/	$0.51
819	Hacken TokenHAI	https://coinmarketcap.com/currencies/hackenai/	$0.05
820	Apollo CurrencyAPL	https://coinmarketcap.com/currencies/apollo-currency/	$0.00
821	LGCY NetworkLGCY	https://coinmarketcap.com/currencies/lgcy-network/	$0.00
822	Inverse FinanceINV	https://coinmarketcap.com/currencies/inverse-finance/	$246.40
823	Hot CrossHOTCROSS	https://coinmarketcap.com/currencies/hot-cross/	$0.20
824	CarbonSWTH	https://coinmarketcap.com/currencies/switcheo/	$0.01
825	Adappter TokenADP	https://coinmarketcap.com/currencies/adappter-token/	$0.03
826	ScPrimeSCP	https://coinmarketcap.com/currencies/scprime/	$0.53
827	Shyft NetworkSHFT	https://coinmarketcap.com/currencies/shyft-network/	$0.10
828	Aragon CourtANJ	https://coinmarketcap.com/currencies/aragon-court/	$0.17
829	FC Barcelona Fan TokenBAR	https://coinmarketcap.com/currencies/fc-barcelona-fan-token/	$5.48
830	GYENGYEN	https://coinmarketcap.com/currencies/gyen/	$0.01
831	REVVREVV	https://coinmarketcap.com/currencies/revv/	$0.08
832	GamerCoinGHX	https://coinmarketcap.com/currencies/gamercoin/	$0.05
833	CONTRACOINCTCN	https://coinmarketcap.com/currencies/contracoin/	$0.45
834	Epic CashEPIC	https://coinmarketcap.com/currencies/epic-cash/	$1.49
835	Router ProtocolROUTE	https://coinmarketcap.com/currencies/router-protocol/	$2.94
836	Permission CoinASK	https://coinmarketcap.com/currencies/permission-coin/	$0.00
837	Xeno TokenXNO	https://coinmarketcap.com/currencies/xeno-token/	$0.06
838	Quantum Resistant LedgerQRL	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	$0.27
839	TernoaCAPS	https://coinmarketcap.com/currencies/ternoa/	$0.04
840	StackOsSTACK	https://coinmarketcap.com/currencies/stackos/	$0.06
841	GlitchGLCH	https://coinmarketcap.com/currencies/glitch/	$0.26
842	ELYSIAEL	https://coinmarketcap.com/currencies/elysia/	$0.01
843	Inter Milan Fan TokenINTER	https://coinmarketcap.com/currencies/inter-milan-fan-token/	$6.70
844	AirSwapAST	https://coinmarketcap.com/currencies/airswap/	$0.13
845	StratosSTOS	https://coinmarketcap.com/currencies/stratos/	$0.99
846	Wing FinanceWING	https://coinmarketcap.com/currencies/wing/	$8.05
847	BitForex TokenBF	https://coinmarketcap.com/currencies/bitforex-token/	$0.00
848	VIDT DatalinkVIDT	https://coinmarketcap.com/currencies/vidt-datalink/	$0.40
849	RetreebTREEB	https://coinmarketcap.com/currencies/retreeb/	$0.13
850	Dora FactoryDORA	https://coinmarketcap.com/currencies/dora-factory/	$4.84
851	HiblocksHIBS	https://coinmarketcap.com/currencies/hiblocks/	$0.00
852	TEMCOTEMCO	https://coinmarketcap.com/currencies/temco/	$0.00
853	Callisto NetworkCLO	https://coinmarketcap.com/currencies/callisto-network/	$0.01
854	BUX TokenBUX	https://coinmarketcap.com/currencies/bux-token/	$0.34
855	VertcoinVTC	https://coinmarketcap.com/currencies/vertcoin/	$0.31
856	Soda CoinSOC	https://coinmarketcap.com/currencies/soda-coin/	$0.01
857	AutoAUTO	https://coinmarketcap.com/currencies/auto/	$369.95
858	Hoge FinanceHOGE	https://coinmarketcap.com/currencies/hoge-finance/	$0.00
859	Santos FC Fan TokenSANTOS	https://coinmarketcap.com/currencies/santos-fc-fan-token/	$4.29
860	0ChainZCN	https://coinmarketcap.com/currencies/0chain/	$0.40
861	King DAGKDAG	https://coinmarketcap.com/currencies/king-dag/	$0.36
862	ZKSpaceZKS	https://coinmarketcap.com/currencies/zkswap/	$0.10
863	Woonkly PowerWOOP	https://coinmarketcap.com/currencies/woonkly-power/	$0.12
864	Unifi Protocol DAOUNFI	https://coinmarketcap.com/currencies/unifi-protocol-dao/	$4.51
865	LunarLNR	https://coinmarketcap.com/currencies/lunar/	$0.00
866	PERL.ecoPERL	https://coinmarketcap.com/currencies/perlin/	$0.04
867	SolaniumSLIM	https://coinmarketcap.com/currencies/solanium/	$0.29
868	PKTPKT	https://coinmarketcap.com/currencies/pkt/	$0.01
869	ObserverOBSR	https://coinmarketcap.com/currencies/observer/	$0.00
870	ChainXPCX	https://coinmarketcap.com/currencies/chainx/	$1.51
871	Santiment Network TokenSAN	https://coinmarketcap.com/currencies/santiment/	$0.30
872	SORAXOR	https://coinmarketcap.com/currencies/sora/	$42.52
873	PAC ProtocolPAC	https://coinmarketcap.com/currencies/pac-protocol/	$0.00
874	SentivateSNTVT	https://coinmarketcap.com/currencies/sentivate/	$0.01
875	NFTY NetworkNFTY	https://coinmarketcap.com/currencies/nfty-network/	$0.07
876	EPIK PrimeEPIK	https://coinmarketcap.com/currencies/epik-prime/	$0.05
877	ArivaARV	https://coinmarketcap.com/currencies/ariva/	$0.00
878	Green Satoshi TokenGST	https://coinmarketcap.com/currencies/green-satoshi-token/	$5.14
879	BananoBAN	https://coinmarketcap.com/currencies/banano/	$0.01
880	ChainGuardiansCGG	https://coinmarketcap.com/currencies/chain-guardians/	$0.30
881	ERC20ERC20	https://coinmarketcap.com/currencies/erc20/	$0.02
882	OpulousOPUL	https://coinmarketcap.com/currencies/opulous/	$0.41
883	ArianeeARIA20	https://coinmarketcap.com/currencies/arianee-protocol/	$0.66
884	PAID NetworkPAID	https://coinmarketcap.com/currencies/paid-network/	$0.22
885	GPEXGPX	https://coinmarketcap.com/currencies/gpex/	$2.31
886	Meter GovernanceMTRG	https://coinmarketcap.com/currencies/meter-governance/	$5.62
887	Orion MoneyORION	https://coinmarketcap.com/currencies/orion-money/	$0.22
888	ThroneTHN	https://coinmarketcap.com/currencies/throne/	$0.05
889	ReddCoinRDD	https://coinmarketcap.com/currencies/redd/	$0.00
890	LBRY CreditsLBC	https://coinmarketcap.com/currencies/library-credits/	$0.03
891	NexusNXS	https://coinmarketcap.com/currencies/nexus/	$0.24
892	UnisocksSOCKS	https://coinmarketcap.com/currencies/unisocks/	$58237.33
893	BitKanKAN	https://coinmarketcap.com/currencies/bitkan/	$0.00
894	GoldfinchGFI	https://coinmarketcap.com/currencies/goldfinch-protocol/	$2.51
895	TokenClubTCT	https://coinmarketcap.com/currencies/tokenclub/	$0.02
896	BABBBAX	https://coinmarketcap.com/currencies/babb/	$0.00
897	ReapChainREAP	https://coinmarketcap.com/currencies/reapchain/	$0.08
898	MetagamZMETAG	https://coinmarketcap.com/currencies/metagamz/	$0.00
899	Fuse NetworkFUSE	https://coinmarketcap.com/currencies/fuse-network/	$0.31
900	CyclubCYCLUB	https://coinmarketcap.com/currencies/cyclub/	$0.01
901	TriumphX801TRIX	https://coinmarketcap.com/currencies/triumphx/	$0.001685
902	vEmpire DDAO802VEMP	https://coinmarketcap.com/currencies/vempire-ddao/	$0.09622
903	Atari Token803ATRI	https://coinmarketcap.com/currencies/atari-token/	$0.01127
904	BullPerks804BLP	https://coinmarketcap.com/currencies/bullperks/	$0.08115
905	MEET.ONE805MEETONE	https://coinmarketcap.com/currencies/meetone/	$0.008604
906	Cryptex Finance806CTX	https://coinmarketcap.com/currencies/cryptex-finance/	$5.54
907	Venus Reward Token807VRT	https://coinmarketcap.com/currencies/venus-reward-token/	$0.0007373
908	MILC Platform808MLT	https://coinmarketcap.com/currencies/milc-platform/	$0.2047
909	Project WITH809WIKEN	https://coinmarketcap.com/currencies/project-with/	$0.01882
910	CoinPoker810CHP	https://coinmarketcap.com/currencies/coinpoker/	$0.05787
911	VIMworldVEED	https://coinmarketcap.com/currencies/vimworld/	$0.00
912	NashNEX	https://coinmarketcap.com/currencies/nash-exchange/	$0.54
913	BreadBRD	https://coinmarketcap.com/currencies/bread/	$0.18
914	BIDRBIDR	https://coinmarketcap.com/currencies/binance-idr/	$0.00
915	Ethereum Push Notification ServicePUSH	https://coinmarketcap.com/currencies/epns/	$1.00
916	PendlePENDLE	https://coinmarketcap.com/currencies/pendle/	$0.13
917	AC Milan Fan TokenACM	https://coinmarketcap.com/currencies/ac-milan-fan-token/	$4.88
918	AventusAVT	https://coinmarketcap.com/currencies/aventus/	$2.55
919	OffshiftXFT	https://coinmarketcap.com/currencies/offshift/	$2.91
920	PIVXPIVX	https://coinmarketcap.com/currencies/pivx/	$0.22
921	DogeBonkDOBO	https://coinmarketcap.com/currencies/dogebonk/	$0.00
922	Vivid LabsVID	https://coinmarketcap.com/currencies/videocoin/	$0.09
923	VesperVSP	https://coinmarketcap.com/currencies/vesper/	$1.72
924	ValidityVAL	https://coinmarketcap.com/currencies/validity/	$3.29
925	PolkaFoundryPKF	https://coinmarketcap.com/currencies/polkafoundry/	$0.38
926	HyperCashHC	https://coinmarketcap.com/currencies/hypercash/	$0.33
927	Rupiah TokenIDRT	https://coinmarketcap.com/currencies/rupiah-token/	$0.00
928	SpiritSwapSPIRIT	https://coinmarketcap.com/currencies/spiritswap/	$0.05
929	DeFi LandDFL	https://coinmarketcap.com/currencies/defi-land/	$0.02
930	USDJUSDJ	https://coinmarketcap.com/currencies/usdj/	$1.00
931	O3 SwapO3	https://coinmarketcap.com/currencies/o3-swap/	$0.31
932	DragonchainDRGN	https://coinmarketcap.com/currencies/dragonchain/	$0.04
933	Stronghold TokenSHX	https://coinmarketcap.com/currencies/stronghold-token/	$0.00
934	Era Token (Era7)ERA	https://coinmarketcap.com/currencies/era-token/	$0.32
935	PangolinPNG	https://coinmarketcap.com/currencies/pangolin/	$0.15
936	TE-FOODTONE	https://coinmarketcap.com/currencies/te-food/	$0.03
937	smARTOFGIVINGAOG	https://coinmarketcap.com/currencies/smartofgiving/	$0.19
938	ArcblockABT	https://coinmarketcap.com/currencies/arcblock/	$0.14
939	PallapayPALLA	https://coinmarketcap.com/currencies/pallapay/	$0.02
940	BirakeBIR	https://coinmarketcap.com/currencies/birake/	$0.14
941	GrinGRIN	https://coinmarketcap.com/currencies/grin/	$0.14
942	PeercoinPPC	https://coinmarketcap.com/currencies/peercoin/	$0.50
943	InfinitecoinIFC	https://coinmarketcap.com/currencies/infinitecoin/	$0.00
944	ObyteGBYTE	https://coinmarketcap.com/currencies/obyte/	$17.08
945	UniCryptUNCX	https://coinmarketcap.com/currencies/uncx/	$438.01
946	PlutonPLU	https://coinmarketcap.com/currencies/pluton/	$7.41
947	Reflexer Ungovernance TokenFLX	https://coinmarketcap.com/currencies/reflexer-ungovernance-token/	$69.80
948	DacxiDACXI	https://coinmarketcap.com/currencies/dacxi/	$0.00
949	Era SwapES	https://coinmarketcap.com/currencies/era-swap/	$0.01
950	Morpheus LabsMITX	https://coinmarketcap.com/currencies/morpheus-labs/	$0.03
951	BigONE TokenONE	https://coinmarketcap.com/currencies/bigone-token/	$0.00
952	Spartan ProtocolSPARTA	https://coinmarketcap.com/currencies/spartan-protocol/	$0.13
953	ASTAASTA	https://coinmarketcap.com/currencies/asta/	$0.01
954	Bitcoin PrivateBTCP	https://coinmarketcap.com/currencies/bitcoin-private/	$2.78
955	PawtocolUPI	https://coinmarketcap.com/currencies/pawtocol/	$0.05
956	ShareTokenSHR	https://coinmarketcap.com/currencies/sharetoken/	$0.01
957	Mogul ProductionsSTARS	https://coinmarketcap.com/currencies/mogul-productions/	$0.04
958	OpacityOPCT	https://coinmarketcap.com/currencies/opacity/	$0.16
959	MobiusMOBI	https://coinmarketcap.com/currencies/mobius/	$0.02
960	Trabzonspor Fan TokenTRA	https://coinmarketcap.com/currencies/trabzonspor-fan-token/	$5.56
961	BENQIQI	https://coinmarketcap.com/currencies/benqi/	$0.04
962	BetUBETU	https://coinmarketcap.com/currencies/betu/	$0.12
963	#MetaHashMHC	https://coinmarketcap.com/currencies/metahash/	$0.00
964	OpenOceanOOE	https://coinmarketcap.com/currencies/openocean/	$0.09
965	ShiryoSHIRYO	https://coinmarketcap.com/currencies/shiryo-inu/	$0.00
966	DSLA ProtocolDSLA	https://coinmarketcap.com/currencies/dsla-protocol/	$0.00
967	ZigcoinZIG	https://coinmarketcap.com/currencies/zigcoin/	$0.03
968	FOAMFOAM	https://coinmarketcap.com/currencies/foam/	$0.04
969	SignumSIGNA	https://coinmarketcap.com/currencies/signum/	$0.01
970	OraichainORAI	https://coinmarketcap.com/currencies/oraichain-token/	$6.25
971	PornRocketPORNROCKET	https://coinmarketcap.com/currencies/pornrocket/	$0.00
972	DeGateDG	https://coinmarketcap.com/currencies/degate/	$0.15
973	PolkamarketsPOLK	https://coinmarketcap.com/currencies/polkamarkets/	$0.18
974	PopulousPPT	https://coinmarketcap.com/currencies/populous/	$0.24
975	NewtonNEW	https://coinmarketcap.com/currencies/newton/	$0.00
976	KylinKYL	https://coinmarketcap.com/currencies/kylin/	$0.05
977	CWV ChainCWV	https://coinmarketcap.com/currencies/cwv-chain/	$0.00
978	Electra ProtocolXEP	https://coinmarketcap.com/currencies/electra-protocol/	$0.00
979	apM CoinAPM	https://coinmarketcap.com/currencies/apm-coin/	$0.03
980	Unicly CryptoPunks CollectionUPUNK	https://coinmarketcap.com/currencies/unicly-cryptopunks-collection/	$0.05
981	TrustVerseTRV	https://coinmarketcap.com/currencies/trustverse/	$0.02
982	LottoLOTTO	https://coinmarketcap.com/currencies/lotto/	$0.01
983	Bitcoin 2BTC2	https://coinmarketcap.com/currencies/bitcoin2/	$0.70
984	ProBit TokenPROB	https://coinmarketcap.com/currencies/probit-token/	$0.29
985	Bitball TreasureBTRS	https://coinmarketcap.com/currencies/bitball-treasure/	$27.24
986	ExeedmeXED	https://coinmarketcap.com/currencies/exeedme/	$0.19
987	RocketX exchangeRVF	https://coinmarketcap.com/currencies/rocket-vault-rocketx/	$0.19
988	Polychain MonstersPMON	https://coinmarketcap.com/currencies/polkamon/	$3.57
989	BLOCKvVEE	https://coinmarketcap.com/currencies/blockv/	$0.00
990	DeHubDEHUB	https://coinmarketcap.com/currencies/dehub/	$0.00
991	MultiVACMTV	https://coinmarketcap.com/currencies/multivac/	$0.00
992	NebulasNAS	https://coinmarketcap.com/currencies/nebulas-token/	$0.19
993	DEXA COINDEXA	https://coinmarketcap.com/currencies/dexa-coin/	$0.00
994	Tachyon ProtocolIPX	https://coinmarketcap.com/currencies/tachyon-protocol/	$0.04
995	Time New BankTNB	https://coinmarketcap.com/currencies/time-new-bank/	$0.00
996	Mirrored ApplemAAPL	https://coinmarketcap.com/currencies/mirrored-apple/	$196.22
997	NFTradeNFTD	https://coinmarketcap.com/currencies/nftrade/	$0.55
998	Belt FinanceBELT	https://coinmarketcap.com/currencies/belt/	$1.19
999	LikeCoinLIKE	https://coinmarketcap.com/currencies/likecoin/	$0.01
1000	Poseidon NetworkQQQ	https://coinmarketcap.com/currencies/poseidon-network/	$0.01
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 1000, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

