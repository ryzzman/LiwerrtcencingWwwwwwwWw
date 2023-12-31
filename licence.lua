local allowedKeys = {
    "MY-LICENCE-KEY-IS-PUT-HERE",
    "V-O-R-T-E-X._OEAF3CJ3R9KEYOHPTJ6TOK3NW7OL186NDVVYZQY9.4142.4205.6310.2208.1731.9323-K-E-Y",
    "V-O-R-T-E-X._H9U1C85ILQ4L9JXAMQV83YX3XLLIF929LC3JR2EX.6473.3074.2501.3627.7813.6697-K-E-Y",
    "V-O-R-T-E-X._E6DJ99A9UTNYJDUQJC8RTQYUMS4FWS3EKKOAHQHH.5935.1664.6608.3379.3061.5749-K-E-Y",
    "V-O-R-T-E-X._YV7S19FEMG3BLWC3Q02V15ZCEEOOUQEZ3CI7364Q.3569.6049.4711.7604.5334.2672-K-E-Y",
    "V-O-R-T-E-X._WU8V9WT87RMQL0WBWY4JZQMD48AYG282U40FBEEM.5219.6814.9227.4823.8030.1388-K-E-Y",
    "V-O-R-T-E-X._CEVN38DEK1NUTKEU0Z97HAJK83IV5DUI444O3LUP.7817.3914.2718.6965.4672.4089-K-E-Y",
    "V-O-R-T-E-X._40YF5ICYDRKHUQCNOJRCMM27E9E9LJ2U6BRADPQG.8335.9838.1870.5967.6751.3026-K-E-Y",
    "V-O-R-T-E-X._0W296ILJKC0QHL3PLVYH3YQ9MQMQDHKJZ3HZPVK3.7828.9918.2880.9913.4063.5285-K-E-Y",
    "V-O-R-T-E-X._7227AUY9YE6YO9BU57ATPAUCFNQKGENNQIP26TKX.9471.3055.2100.4468.1938.1123-K-E-Y",
    "V-O-R-T-E-X._9PHJ5TA7G6WOTZ4U4OP83MHYHFNVSYR2J6XTYI7G.2219.9779.1238.7848.5315.3151-K-E-Y",
    "V-O-R-T-E-X._OB68T1LDKK3ZH63D1X7S28I2KCJ61E3FNHSCQTNJ.6730.6683.3782.5772.1017.7797-K-E-Y",
    "V-O-R-T-E-X._CTXJ1O9WEAD5XDJASUD9R63TVT5YJQ7Y0J2LC5L7.9490.6001.2029.1191.6776.9202-K-E-Y",
    "V-O-R-T-E-X._VWF3HEYXKPALXJAF4PZLYD0M8PXF8PRFGVXUALUK.2121.2126.2002.1315.2300.4669-K-E-Y",
    "V-O-R-T-E-X._QQ448JB77GNC8CET18H3YHOZYSPNKCJU5R8JS37I.3945.8580.7450.6558.3988.1940-K-E-Y",
    "V-O-R-T-E-X._WF4UPTS0U3B8152C6GKPNN8DRTHKF59Q4TTC3G69.8331.1574.2409.3457.6437.9511-K-E-Y",
    "V-O-R-T-E-X._FZGA3024NG2CCJ9ZSLUA0XKRR53KDPGSI3JFE1FK.9583.7313.1384.1518.9097.9337-K-E-Y",
    "V-O-R-T-E-X._SSGQ5GJU33BTXYUIK3HNL5G7YE0WZ5P5FUR4A8PY.9256.4285.5429.5934.5794.4672-K-E-Y",
    "V-O-R-T-E-X._U54R3JR8WMGXTXNJXB0B5DOOIW6X4D695NVHLYY2.9740.5384.8861.4623.3680.3164-K-E-Y",
    "V-O-R-T-E-X._RL0K6NQRGCX8BA4X7RLYEFHH0IU9I87O1H9MNBMA.9262.9046.8389.4173.7939.2407-K-E-Y",
    "V-O-R-T-E-X._N1TM4VAC57R2P9DEC01ZK1VVRBIUN2SRVYHU25UO.8630.9761.7800.4394.2884.6737-K-E-Y",
    "V-O-R-T-E-X._3UTC17QH9UBV9WVQ6TGJ6CR0U8WX54JJC18AJXU8.2957.8930.2418.9215.2100.3018-K-E-Y",
    "V-O-R-T-E-X._VSC7GUV77RIDFYXNK06SL94VMCJ8FCIZ8B1LUZPF.5257.8720.3662.4138.1772.6332-K-E-Y",
    "V-O-R-T-E-X._ZGWXWE6Z93I110PMSVE864RNRXIAS2Z8FNQUYCUT.9908.2733.8013.5399.4591.5439-K-E-Y",
    "V-O-R-T-E-X._XLNDQXM9I6N58CP8WCT54FGOIG512PC9NH3C3GWN.9217.4243.1044.7043.3112.1902-K-E-Y",
    "V-O-R-T-E-X._9EHD0KBW3OTR6CINE8ZHLR1989W21670VOKWECKC.6166.1907.3660.7666.2218.4288-K-E-Y",
    "V-O-R-T-E-X._CO0G2AXS6I0AKHGJVNA51N965EY8MOL7OGRME2AJ.1022.5168.8863.3447.4091.6753-K-E-Y",
    "V-O-R-T-E-X._UEUSNFB8Q6AKNIE671322NRGYEJFI2BZKT083CL5.8142.3545.9097.8611.6477.6756-K-E-Y",
    "V-O-R-T-E-X._KZ92D7OU5RSCOSLVBRXQ04BVQCY060GHIPZKV126.4827.5681.7311.7141.4487.8177-K-E-Y",
    "V-O-R-T-E-X._S1UJHVWHEV302NPLM7NW72LABUGV9TTBZ555IRX8.6896.5666.4658.1715.1573.1885-K-E-Y",
    "V-O-R-T-E-X._XAZ2RXFYU9MKL5ABJQD8EG60EO2DPZWXXWAUR36T.6637.6778.4272.7696.9617.7879-K-E-Y",
    "V-O-R-T-E-X._6YZPVHH66SQ8OEP7AO5H80FJQ1LDA2O4U1DLI1ON.6266.2994.8613.5033.4641.1681-K-E-Y",
    "V-O-R-T-E-X._MPTD9WW6JN0QTM010CY3UDMI2Z1DJVNE3IN954EP.4763.5523.3182.5052.9187.7139-K-E-Y",
    "V-O-R-T-E-X._M7O7YDXXSHUINM7BGXD2JZZ889G0HTB2DS2KL7SE.5966.4313.9350.3149.2963.5080-K-E-Y",
    "V-O-R-T-E-X._U4289KXBD21XV9SD3KG58K42RFFCCX8GK1SYQJOV.5262.5996.6436.5440.4363.2636-K-E-Y",
    "V-O-R-T-E-X._Q32MX0EOCV14TJDPK6OJOXDDFXQUA5U7LR7149NV.2451.5851.7859.5119.3481.2543-K-E-Y",
    "V-O-R-T-E-X._GTUM5LBZ6UXIP3AYPKOGYSRKCMR2H1O9M43PAS51.9951.8702.5220.3060.2275.4351-K-E-Y",
    "V-O-R-T-E-X._S2KIE7QPBVBXNC20SS6RJBBY3VRXG0V5GXGCQ0Y8.2244.4607.7091.5457.8203.5215-K-E-Y",
    "V-O-R-T-E-X._KN55POYKE6Y1X3TA3KY6GBHH11UH1MSOIF5CF2TT.8767.1990.3505.5727.7382.4094-K-E-Y",
    "V-O-R-T-E-X._HPGVZ8NCRGOLZI7W22D8C9VKMQRFLKNICH4UW6IC.3216.4816.3407.2617.7418.4455-K-E-Y",
    "V-O-R-T-E-X._08ZLZZXG2FZNMD0EP0121RLOD6BIT32FVEITYTNZ.1707.7233.5416.6830.6165.9078-K-E-Y",
    "V-O-R-T-E-X._52L8VK8UDDX2KHNR64QGH94B0PIJQA4SOFZTE2SQ.3917.8941.1818.8756.8765.2331-K-E-Y",
    "V-O-R-T-E-X._7ERGU9LFXPBNKEPWX8YQOBFM5DXIOX1N9SRIWE2K.9438.6541.5792.3425.5500.2604-K-E-Y",
    "V-O-R-T-E-X._CZHVZC1KOYHSXSNKLPYVY0QEHTDGIKT6X74JC460.9149.3829.1718.6586.2006.6304-K-E-Y",
    "V-O-R-T-E-X._0KN0W3TOIH82ML3WBEDBWWPKVJB1FXPBZBPFBAND.9198.6021.2678.8623.7554.4628-K-E-Y",
    "V-O-R-T-E-X._VCTKTF7IG6RADX0O5CXDYYGPTSGVLZ9EFW1RBH2L.3648.4061.5606.8805.3716.5931-K-E-Y",
    "V-O-R-T-E-X._G7LH4AM4L7IEBCAP490VKCVJO5W90UOFYIDS3EYV.9611.4039.4806.9352.7612.2670-K-E-Y",
    "V-O-R-T-E-X._NM3O1BSMQCLNCD93LYH73UH3AUI69K9ALCOGORX3.8385.7365.9376.6350.2807.6414-K-E-Y",
    "V-O-R-T-E-X._MBPW2X5GX9D4G55OL1SPEEJYFYAONG6U0DZDDCO0.4407.3565.5460.1876.7189.9533-K-E-Y",
    "V-O-R-T-E-X._3D6JEO6CXJ7FQ365R8D41MT4I7RIUVM42W44Z2RT.5649.4195.2759.3798.9894.5037-K-E-Y",
    "V-O-R-T-E-X._NMZWVQKJ7DVVUJ55KN7NI5NZH0ZIH3ZXEFMK1UVL.4922.2768.5732.4615.9185.3926-K-E-Y",
    "V-O-R-T-E-X._DLLFRXTBLX8I7HSF9QDCUQE5J67Y2873LPVWNFHG.7147.7073.8264.3397.5141.9632-K-E-Y",
    "V-O-R-T-E-X._CZ5HJVI17T3CBEODG7SC639RD19SMFCQ8TSD1YGC.2105.3644.5218.3353.8826.2584-K-E-Y",
    "V-O-R-T-E-X._KKG87JA5JSU5A3WMEH7K6V03TW02CG1IYSZ1BKUH.7114.8251.4020.5358.3570.9093-K-E-Y",
    "V-O-R-T-E-X._MY7MELW67BIBNX7YFEPBXDRY6IX0A1DSK7GRD7F7.8565.8816.9177.4387.4590.8277-K-E-Y",
    "V-O-R-T-E-X._68ANISPBH62WNAJZDUNEE2O0HOM2V6SPWLX9ROAL.9201.8573.2878.9781.6118.3765-K-E-Y",
    "V-O-R-T-E-X._VW8CISS90KCYGQKQLB2QU4NGDFI9U634CZEZNA8H.5706.6753.8691.7704.5505.1799-K-E-Y",
    "V-O-R-T-E-X._YCHPYWPF9GPNDQT7TPQUJAUYQ6P65ISE56GVEF81.2552.5227.6195.3619.8489.4303-K-E-Y",
    "V-O-R-T-E-X._9LAT6S2OLFAZ4JJCNEFINSNP40K7OZEMMY306L64.8233.5118.9909.7321.3434.7053-K-E-Y",
    "V-O-R-T-E-X._U6BDT7DABY536ZBXJIUKLOPSMKPL7OAJIIX1BAJG.5434.2057.2158.2220.2681.2204-K-E-Y",
    "V-O-R-T-E-X._QK1TLG5UHVDKJ16V37YKNRI1CDH7V751018I4SJJ.3021.4817.8337.2513.8207.5354-K-E-Y",
    "V-O-R-T-E-X._S7PQ8LWV6KAR3ORB7W544KYD89NYO6BTBF24L4LF.3948.5929.9173.9336.4508.3632-K-E-Y",
    "V-O-R-T-E-X._9Z80QFSLRR62VYC176PZX1TNLLBA7JKFT5ZZH22M.8965.2992.2358.7976.3567.5175-K-E-Y",
    "V-O-R-T-E-X._APYZKWFMJZQ5JWHHT40YAHPNT7QZTGVTCA2T4ANZ.4868.2431.4084.1553.7483.4221-K-E-Y",
    "V-O-R-T-E-X._F52J50QHB4827QOUNRV9SYYV7DOFU8K5MP5FITOV.6699.4439.5079.6403.6052.5202-K-E-Y",
    "V-O-R-T-E-X._REAZHCP59BWBJ2DJ3UO14Q52B83DYDU48XXTOPYS.3160.6839.7882.1798.8512.9561-K-E-Y",
    "V-O-R-T-E-X._JFBA7IWLLWPZMWLVA168T29NZZ7XXDA82Y0J2VKG.6905.9198.9352.4045.5846.1071-K-E-Y",
    "V-O-R-T-E-X._X15ZCPKLYB3TVRD503S7KDHYNMG4VXMYMW4K7AV3.7951.4714.2493.5640.4934.6173-K-E-Y",
    "V-O-R-T-E-X._9R2G2SBYKWTLVUORA4KW3KW06HQVOLDV7AX8I0GF.3640.6054.6202.8000.9050.2806-K-E-Y",
    "V-O-R-T-E-X._YZS0ELGH0K1NJ176XXVWYJ4DVM2FJ3XTG2IRCQAO.7725.4361.2201.3843.5845.7345-K-E-Y",
    "V-O-R-T-E-X._18WP6ZH8P323U35TX1CAS1JYK0FKPJUEDX4FVLGM.6512.9848.5889.5883.1224.1307-K-E-Y",
    "V-O-R-T-E-X._8RIJ7BJH3UHYP1BFMCP6S8NF408M3F5UKQZV6RLG.3717.1942.5584.3985.5846.3412-K-E-Y",
    "V-O-R-T-E-X._DMG1B0J5HBXXPNSFO38U1UMXFWK1304D330G05D3.2312.5837.6641.7831.4006.6703-K-E-Y",
    "V-O-R-T-E-X._2B2P1GWRK4DNURW22ZBL1OLS83ENOIZV4JMUKVSH.6883.7334.1985.9206.2294.5110-K-E-Y",
    "V-O-R-T-E-X._L4Q7ATPW9Z4AQSPQKK1CW2DXGCMCJFSKQ568S5ML.9640.2248.7461.1813.2349.8319-K-E-Y",
    "V-O-R-T-E-X._JN9EKAQ2ZTJGGZE2T7AA9KI7URJ54AQ8PXG9YQKS.7874.4545.6502.2173.9957.5498-K-E-Y",
    "V-O-R-T-E-X._Y6XAINZ86CAI9YVZKYX8AKFOWTESEM6PRN4GOIYV.5592.9934.4887.4367.3616.3966-K-E-Y",
    "V-O-R-T-E-X._RT3CD1JQEI1SATMQLS8NJL651C5DWQ3KNJQRPWJJ.5061.6358.5496.4571.3302.6303-K-E-Y",
    "V-O-R-T-E-X._76JA7KWLY06JI74V2YXGK3BTOPU3OPQ3S1H9QJ5P.7129.5196.5614.4787.9181.6441-K-E-Y",
    "V-O-R-T-E-X._LVH14MBS2FPUAN9DA43W69HQM7WXRO9S69J5H6YH.9216.6410.5223.8990.4702.4818-K-E-Y",
    "V-O-R-T-E-X._Z0UKAKD81D1TMQRUG9CA71GMXGPRGRCZ691JAN4C.5316.5631.4751.6385.9307.3379-K-E-Y",
    "V-O-R-T-E-X._KAOL2TAQCFUMQZGDNRVUMGLTDD23LMFEEKHWCHHF.3228.5757.8890.3163.8469.6826-K-E-Y",
    "V-O-R-T-E-X._UKMD7ZAC3QOEP281YDGZ6MOQMEQ5MXCVP1MHOFPZ.7415.1797.8979.8217.2989.7110-K-E-Y",
    "V-O-R-T-E-X._A5EIQ7FN7X0FFPR3LV0W0TKZV8HQJK8GCJGA8FT6.2068.1597.2207.2755.5084.2414-K-E-Y",
    "V-O-R-T-E-X._508GST2IHNL1F4F107K7UFFCOP0N2H6XOSA5H35O.2740.9854.2311.9462.1206.4364-K-E-Y",
    "V-O-R-T-E-X._4JCHN2FP6PEFB1SXKZZIAQEIBTEU3JICZM5K42K7.1719.2826.8501.3321.5275.6093-K-E-Y",
    "V-O-R-T-E-X._9UMBMFXHXQ8VMAJ0LO88ZBF08WT39KBMZW3PBDKW.5755.9904.9452.9464.6666.4934-K-E-Y",
    "V-O-R-T-E-X._H9T4RSEZ04OXDJ42WNOW0OHB56T0WUCMEB2PQ8TX.6776.6828.9339.8857.2297.1224-K-E-Y",
    "V-O-R-T-E-X._OFPZLUBQS88X977TVGM3F4Q525GTE2IP9SIBY6LZ.2582.1981.6894.5677.1074.1114-K-E-Y",
    "V-O-R-T-E-X._J6VP2TONNO0LE8QKVNQZJ6ORHYQV19IDMH4W97TH.8880.1298.3713.8289.6158.7115-K-E-Y",
    "V-O-R-T-E-X._AKVHAUC8B99PMG1L7WJEJYQK4T5WP3RGRQXJB5EB.3224.1491.6460.6156.4801.8600-K-E-Y",
    "V-O-R-T-E-X._P4NTM3WZGXJH8TK6KMX3K9ZU4Z5NFHNLV6T9QK2F.7397.5460.1829.4795.9106.7115-K-E-Y",
    "V-O-R-T-E-X._VM5UJ7LBYGIABFNCAYYY1CK985LDY581LUJPJ65O.5996.5313.1688.2819.4387.1119-K-E-Y",
    "V-O-R-T-E-X._GJYIFRNLH5NT1OYRM8D3X12SO7OW22LZXTNDNO83.2406.2262.6540.1807.4028.3316-K-E-Y",
    "V-O-R-T-E-X._3BYN07IP0H8GC3Q4R51C6X1IN7YR9B86GVUGF1HQ.9317.3158.2144.3111.3725.7671-K-E-Y",
    "V-O-R-T-E-X._OCXYT0GO916DWYEEURZM7JAFEGG8KWXOIOMQUKPE.5739.9865.1975.1702.2856.1782-K-E-Y",
    "V-O-R-T-E-X._ATINBD1JPCCPR9BZGSAHO5NHS0C4LWBO37NUCYEA.2919.9165.5666.3767.7384.9646-K-E-Y",
    "V-O-R-T-E-X._ZI391W7SUBGSVYITDCO1FO61Q6W85O4X081LPR2Z.9979.2865.9811.7178.6657.2294-K-E-Y",
    "V-O-R-T-E-X._J2CNIHCHG2LN4JV9BC6OET6X40EWB9AWUZPTD94Y.6950.8593.7463.3895.7341.4191-K-E-Y",
    "V-O-R-T-E-X._NJMSOE6Z4MNECG5EWPNNRYCEDJFBGI8U6OYHPD3B.3324.4757.8404.5971.1014.5668-K-E-Y",
}

print(allowedKeys)
