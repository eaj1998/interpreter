{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,172) ([3840,8896,3,4096,32768,0,0,0,0,64512,3,1920,64,0,0,0,0,0,0,0,0,0,0,0,7680,256,61440,11264,32818,24583,401,60,2,480,16,0,0,0,0,0,0,16,0,34,0,0,0,0,15360,768,57356,6145,96,49167,768,120,6150,960,49200,7680,384,61446,3072,32816,24583,384,0,32,1536,16,49152,1,0,14,0,112,0,30592,0,39936,3,0,0,0,4,0,32,0,0,0,120,6422,960,51376,0,0,1,4096,0,0,2,0,0,0,0,12288,128,0,43008,49152,45071,200,0,0,240,12844,0,0,0,0,0,32768,0,49215,802,0,0,3072,32,24576,256,0,20480,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Form","App","Atom","Type","num","var","true","false","int","bool","'+'","'-'","'*'","\"&&\"","\"||\"","\"==\"","'<'","'>'","'!'","'('","')'","'\\\\'","\"->\"","':'","','","if","then","else","fst","snd","%eof"]
        bit_start = st Prelude.* 35
        bit_end = (st Prelude.+ 1) Prelude.* 35
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..34]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (9) = happyShift action_7
action_0 (10) = happyShift action_8
action_0 (11) = happyShift action_9
action_0 (12) = happyShift action_10
action_0 (23) = happyShift action_11
action_0 (24) = happyShift action_12
action_0 (26) = happyShift action_2
action_0 (30) = happyShift action_13
action_0 (33) = happyShift action_14
action_0 (34) = happyShift action_15
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (26) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (10) = happyShift action_30
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (35) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (15) = happyShift action_22
action_4 (16) = happyShift action_23
action_4 (17) = happyShift action_24
action_4 (18) = happyShift action_25
action_4 (19) = happyShift action_26
action_4 (20) = happyShift action_27
action_4 (21) = happyShift action_28
action_4 (22) = happyShift action_29
action_4 _ = happyReduce_3

action_5 (9) = happyShift action_7
action_5 (10) = happyShift action_8
action_5 (11) = happyShift action_9
action_5 (12) = happyShift action_10
action_5 (24) = happyShift action_12
action_5 (7) = happyGoto action_21
action_5 _ = happyReduce_12

action_6 _ = happyReduce_17

action_7 _ = happyReduce_20

action_8 _ = happyReduce_21

action_9 _ = happyReduce_22

action_10 _ = happyReduce_23

action_11 (9) = happyShift action_7
action_11 (10) = happyShift action_8
action_11 (11) = happyShift action_9
action_11 (12) = happyShift action_10
action_11 (24) = happyShift action_12
action_11 (7) = happyGoto action_20
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (9) = happyShift action_7
action_12 (10) = happyShift action_8
action_12 (11) = happyShift action_9
action_12 (12) = happyShift action_10
action_12 (23) = happyShift action_11
action_12 (24) = happyShift action_12
action_12 (26) = happyShift action_2
action_12 (30) = happyShift action_13
action_12 (33) = happyShift action_14
action_12 (34) = happyShift action_15
action_12 (4) = happyGoto action_19
action_12 (5) = happyGoto action_4
action_12 (6) = happyGoto action_5
action_12 (7) = happyGoto action_6
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (9) = happyShift action_7
action_13 (10) = happyShift action_8
action_13 (11) = happyShift action_9
action_13 (12) = happyShift action_10
action_13 (23) = happyShift action_11
action_13 (24) = happyShift action_12
action_13 (26) = happyShift action_2
action_13 (30) = happyShift action_13
action_13 (33) = happyShift action_14
action_13 (34) = happyShift action_15
action_13 (4) = happyGoto action_18
action_13 (5) = happyGoto action_4
action_13 (6) = happyGoto action_5
action_13 (7) = happyGoto action_6
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (9) = happyShift action_7
action_14 (10) = happyShift action_8
action_14 (11) = happyShift action_9
action_14 (12) = happyShift action_10
action_14 (24) = happyShift action_12
action_14 (7) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (9) = happyShift action_7
action_15 (10) = happyShift action_8
action_15 (11) = happyShift action_9
action_15 (12) = happyShift action_10
action_15 (24) = happyShift action_12
action_15 (7) = happyGoto action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_15

action_17 _ = happyReduce_14

action_18 (31) = happyShift action_42
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (25) = happyShift action_40
action_19 (29) = happyShift action_41
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_16

action_21 _ = happyReduce_13

action_22 (9) = happyShift action_7
action_22 (10) = happyShift action_8
action_22 (11) = happyShift action_9
action_22 (12) = happyShift action_10
action_22 (23) = happyShift action_11
action_22 (24) = happyShift action_12
action_22 (33) = happyShift action_14
action_22 (34) = happyShift action_15
action_22 (5) = happyGoto action_39
action_22 (6) = happyGoto action_5
action_22 (7) = happyGoto action_6
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_7
action_23 (10) = happyShift action_8
action_23 (11) = happyShift action_9
action_23 (12) = happyShift action_10
action_23 (23) = happyShift action_11
action_23 (24) = happyShift action_12
action_23 (33) = happyShift action_14
action_23 (34) = happyShift action_15
action_23 (5) = happyGoto action_38
action_23 (6) = happyGoto action_5
action_23 (7) = happyGoto action_6
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_7
action_24 (10) = happyShift action_8
action_24 (11) = happyShift action_9
action_24 (12) = happyShift action_10
action_24 (23) = happyShift action_11
action_24 (24) = happyShift action_12
action_24 (33) = happyShift action_14
action_24 (34) = happyShift action_15
action_24 (5) = happyGoto action_37
action_24 (6) = happyGoto action_5
action_24 (7) = happyGoto action_6
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_7
action_25 (10) = happyShift action_8
action_25 (11) = happyShift action_9
action_25 (12) = happyShift action_10
action_25 (23) = happyShift action_11
action_25 (24) = happyShift action_12
action_25 (33) = happyShift action_14
action_25 (34) = happyShift action_15
action_25 (5) = happyGoto action_36
action_25 (6) = happyGoto action_5
action_25 (7) = happyGoto action_6
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_7
action_26 (10) = happyShift action_8
action_26 (11) = happyShift action_9
action_26 (12) = happyShift action_10
action_26 (23) = happyShift action_11
action_26 (24) = happyShift action_12
action_26 (33) = happyShift action_14
action_26 (34) = happyShift action_15
action_26 (5) = happyGoto action_35
action_26 (6) = happyGoto action_5
action_26 (7) = happyGoto action_6
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_7
action_27 (10) = happyShift action_8
action_27 (11) = happyShift action_9
action_27 (12) = happyShift action_10
action_27 (23) = happyShift action_11
action_27 (24) = happyShift action_12
action_27 (33) = happyShift action_14
action_27 (34) = happyShift action_15
action_27 (5) = happyGoto action_34
action_27 (6) = happyGoto action_5
action_27 (7) = happyGoto action_6
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (9) = happyShift action_7
action_28 (10) = happyShift action_8
action_28 (11) = happyShift action_9
action_28 (12) = happyShift action_10
action_28 (23) = happyShift action_11
action_28 (24) = happyShift action_12
action_28 (33) = happyShift action_14
action_28 (34) = happyShift action_15
action_28 (5) = happyGoto action_33
action_28 (6) = happyGoto action_5
action_28 (7) = happyGoto action_6
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (9) = happyShift action_7
action_29 (10) = happyShift action_8
action_29 (11) = happyShift action_9
action_29 (12) = happyShift action_10
action_29 (23) = happyShift action_11
action_29 (24) = happyShift action_12
action_29 (33) = happyShift action_14
action_29 (34) = happyShift action_15
action_29 (5) = happyGoto action_32
action_29 (6) = happyGoto action_5
action_29 (7) = happyGoto action_6
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (28) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (13) = happyShift action_46
action_31 (14) = happyShift action_47
action_31 (24) = happyShift action_48
action_31 (8) = happyGoto action_45
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (15) = happyShift action_22
action_32 (16) = happyShift action_23
action_32 (17) = happyShift action_24
action_32 (20) = happyFail []
action_32 (21) = happyFail []
action_32 (22) = happyFail []
action_32 _ = happyReduce_11

action_33 (15) = happyShift action_22
action_33 (16) = happyShift action_23
action_33 (17) = happyShift action_24
action_33 (20) = happyFail []
action_33 (21) = happyFail []
action_33 (22) = happyFail []
action_33 _ = happyReduce_10

action_34 (15) = happyShift action_22
action_34 (16) = happyShift action_23
action_34 (17) = happyShift action_24
action_34 (20) = happyFail []
action_34 (21) = happyFail []
action_34 (22) = happyFail []
action_34 _ = happyReduce_9

action_35 (15) = happyShift action_22
action_35 (16) = happyShift action_23
action_35 (17) = happyShift action_24
action_35 (18) = happyShift action_25
action_35 (20) = happyShift action_27
action_35 (21) = happyShift action_28
action_35 (22) = happyShift action_29
action_35 _ = happyReduce_8

action_36 (15) = happyShift action_22
action_36 (16) = happyShift action_23
action_36 (17) = happyShift action_24
action_36 (20) = happyShift action_27
action_36 (21) = happyShift action_28
action_36 (22) = happyShift action_29
action_36 _ = happyReduce_7

action_37 _ = happyReduce_6

action_38 (17) = happyShift action_24
action_38 _ = happyReduce_5

action_39 (17) = happyShift action_24
action_39 _ = happyReduce_4

action_40 _ = happyReduce_18

action_41 (9) = happyShift action_7
action_41 (10) = happyShift action_8
action_41 (11) = happyShift action_9
action_41 (12) = happyShift action_10
action_41 (23) = happyShift action_11
action_41 (24) = happyShift action_12
action_41 (26) = happyShift action_2
action_41 (30) = happyShift action_13
action_41 (33) = happyShift action_14
action_41 (34) = happyShift action_15
action_41 (4) = happyGoto action_44
action_41 (5) = happyGoto action_4
action_41 (6) = happyGoto action_5
action_41 (7) = happyGoto action_6
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (9) = happyShift action_7
action_42 (10) = happyShift action_8
action_42 (11) = happyShift action_9
action_42 (12) = happyShift action_10
action_42 (23) = happyShift action_11
action_42 (24) = happyShift action_12
action_42 (26) = happyShift action_2
action_42 (30) = happyShift action_13
action_42 (33) = happyShift action_14
action_42 (34) = happyShift action_15
action_42 (4) = happyGoto action_43
action_42 (5) = happyGoto action_4
action_42 (6) = happyGoto action_5
action_42 (7) = happyGoto action_6
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (32) = happyShift action_52
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (25) = happyShift action_51
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (27) = happyShift action_50
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_24

action_47 _ = happyReduce_25

action_48 (13) = happyShift action_46
action_48 (14) = happyShift action_47
action_48 (24) = happyShift action_48
action_48 (8) = happyGoto action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (25) = happyShift action_57
action_49 (27) = happyShift action_58
action_49 (29) = happyShift action_59
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (9) = happyShift action_7
action_50 (10) = happyShift action_8
action_50 (11) = happyShift action_9
action_50 (12) = happyShift action_10
action_50 (13) = happyShift action_46
action_50 (14) = happyShift action_47
action_50 (23) = happyShift action_11
action_50 (24) = happyShift action_56
action_50 (26) = happyShift action_2
action_50 (30) = happyShift action_13
action_50 (33) = happyShift action_14
action_50 (34) = happyShift action_15
action_50 (4) = happyGoto action_54
action_50 (5) = happyGoto action_4
action_50 (6) = happyGoto action_5
action_50 (7) = happyGoto action_6
action_50 (8) = happyGoto action_55
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_19

action_52 (9) = happyShift action_7
action_52 (10) = happyShift action_8
action_52 (11) = happyShift action_9
action_52 (12) = happyShift action_10
action_52 (23) = happyShift action_11
action_52 (24) = happyShift action_12
action_52 (26) = happyShift action_2
action_52 (30) = happyShift action_13
action_52 (33) = happyShift action_14
action_52 (34) = happyShift action_15
action_52 (4) = happyGoto action_53
action_52 (5) = happyGoto action_4
action_52 (6) = happyGoto action_5
action_52 (7) = happyGoto action_6
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_2

action_54 _ = happyReduce_1

action_55 (27) = happyShift action_58
action_55 _ = happyReduce_27

action_56 (9) = happyShift action_7
action_56 (10) = happyShift action_8
action_56 (11) = happyShift action_9
action_56 (12) = happyShift action_10
action_56 (13) = happyShift action_46
action_56 (14) = happyShift action_47
action_56 (23) = happyShift action_11
action_56 (24) = happyShift action_56
action_56 (26) = happyShift action_2
action_56 (30) = happyShift action_13
action_56 (33) = happyShift action_14
action_56 (34) = happyShift action_15
action_56 (4) = happyGoto action_19
action_56 (5) = happyGoto action_4
action_56 (6) = happyGoto action_5
action_56 (7) = happyGoto action_6
action_56 (8) = happyGoto action_49
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_28

action_58 (13) = happyShift action_46
action_58 (14) = happyShift action_47
action_58 (24) = happyShift action_48
action_58 (8) = happyGoto action_55
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (13) = happyShift action_46
action_59 (14) = happyShift action_47
action_59 (24) = happyShift action_48
action_59 (8) = happyGoto action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (25) = happyShift action_61
action_60 (27) = happyShift action_58
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_26

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 6 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Less happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  6 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  6 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Fst happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  6 happyReduction_15
happyReduction_15 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Snd happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  6 happyReduction_16
happyReduction_16 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  7 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Paren happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 5 7 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn7
		 (Num happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  7 happyReduction_21
happyReduction_21 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  7 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn7
		 (BTrue
	)

happyReduce_23 = happySpecReduce_1  7 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn7
		 (BFalse
	)

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn8
		 (TNum
	)

happyReduce_25 = happySpecReduce_1  8 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn8
		 (TBool
	)

happyReduce_26 = happyReduce 5 8 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (TPair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (TArrow happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  8 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 9;
	TokenVar happy_dollar_dollar -> cont 10;
	TokenTrue -> cont 11;
	TokenFalse -> cont 12;
	TokenIntType -> cont 13;
	TokenBoolType -> cont 14;
	TokenPlus -> cont 15;
	TokenSub -> cont 16;
	TokenTimes -> cont 17;
	TokenAnd -> cont 18;
	TokenOr -> cont 19;
	TokenEq -> cont 20;
	TokenLess -> cont 21;
	TokenGreater -> cont 22;
	TokenNot -> cont 23;
	TokenLParen -> cont 24;
	TokenRParen -> cont 25;
	TokenLam -> cont 26;
	TokenArrow -> cont 27;
	TokenColon -> cont 28;
	TokenComma -> cont 29;
	TokenIf -> cont 30;
	TokenThen -> cont 31;
	TokenElse -> cont 32;
	TokenFst -> cont 33;
	TokenSnd -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
