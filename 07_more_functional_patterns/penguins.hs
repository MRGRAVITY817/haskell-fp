module Penguins where

data WherePenguinsLive = Galapagos | Antarctica | Australia | 
                         SouthAfrica | SouthAmerica deriving (Eq, Show)

data Penguin = Peng WherePenguinsLive deriving (Eq, Show)

isSouthAfrica :: WherePenguinsLive -> Bool
-- isSouthAfrica SouthAfrica = True
-- isSouthAfrica Galapagos = False 
-- isSouthAfrica Antarctica = False 
-- isSouthAfrica Australia = False 
-- isSouthAfrica SouthAmerica = False 
-- > Too Redundant!!

-- Solving brevity with pattern matching
isSouthAfrica SouthAfrica = True
isSouthAfrica _           = False

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng whereitlives) = whereitlives

humboldt = Peng SouthAmerica
gentoo = Peng Antarctica 
macaroni = Peng Antarctica 
little = Peng Australia 
galapagos = Peng Galapagos 

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True 
galapagosPenguin _                = False

antarcticaPenguin :: Penguin -> Bool
antarcticaPenguin (Peng Antarctica) = True 
antarcticaPenguin _                = False

antarcticaOrGalapagos :: Penguin -> Bool
antarcticaOrGalapagos p = (galapagosPenguin p) || (antarcticaPenguin p)