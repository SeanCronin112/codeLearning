-- Code taken from Derek Banas Youtube Tutorial, which can be found at https://www.youtube.com/watch?v=02_H3LjqMr8

{-
Multiline
Comment
-}

-- Single Line Comment

{-
Loading the file: 
In the working directory, type ':l "name.hs" to load it in, and type ':r' to reload it.
-}

-- -----------------------------------------------------------------------------Basics----------------------------------------------------------------------------------------
import Data.List 
import System.IO

{- 
Maximum and Minimum Integers
maxInt = maxBound :: Int
minInt = minBound :: Int
-}


-- Double
bigFloat :: Double
bigFloat = 3.999999909999 + 0.000000000005


-- Bool True False
-- Char '
-- Tuple (Mostly contains 2 values)

always5 :: Int
always5 = 5

addEx :: Integer
addEx = 5+5
subEx :: Integer
subEx = 5-5
mulEx :: Integer
mulEx = 5*5
divEx :: Double
divEx = 5/5

modEx :: Integer
modEx = mod 5 4

--Negative Numbers must be enclosed in Brackets.
negNumEx :: Integer
negNumEx = 5 + (-4)

-- In the GHCi, the :t will give the input type and syntax required for a function.

num9 :: Int
num9 = 9 :: Int
sqrtOf9 :: Double
sqrtOf9 = sqrt(fromIntegral 16)

-- Other Math Functions
piVal :: Double
piVal = pi
ePow9 :: Double
ePow9 = exp 9
logOf9 :: Double
logOf9 = log 9
squared9 :: Double
squared9 = 9 ** 2
truncateVal :: Integer
truncateVal = truncate 1.356
roundVal :: Integer
roundVal = round 9.9999
ceilingVal :: Integer
ceilingVal = ceiling 9.999
floorVal :: Integer
floorVal = floor 9.99999


sumOfNums :: Integer
sumOfNums = sum [1..1000]
trueAndFalse :: Bool
trueAndFalse = True && False
trueOrFalse :: Bool
trueOrFalse = True || False
notTrue :: Bool
notTrue = not(True)

-- ------------------------------------------------------------Lists-------------------------------------------------------------------------------

primeNumbers :: [Integer]
primeNumbers = [3,5,7,11]

morePrimes :: [Integer]
morePrimes = primeNumbers ++ [13,17,19,21]

favNums = 2 : 7 : 21 : 66 : []

multList = [[3,5,7], [11, 13, 17]]

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 0

firstPrime = head morePrimes2

lastPrime = last morePrimes2

-- Everything except for the last file.
primeInit = init morePrimes2

-- First 3 Values
first3Primes = take 3 morePrimes2

-- Everything except first 3 values: 
removedPrimes = drop 3 morePrimes2

-- Checking if a value is in a list.
is7InList = 7 `elem` morePrimes2

maxPrime = maximum morePrimes2

minPrime = minimum morePrimes2

newList = [2,3,5]

-- Product of the List.
prodPrimes = product newList

-- Generating a list between 1-10

oneToTen = [1..10]

-- Generating Even Numbers
evenList = [2,4..20]
everySecondLetter = ['A','C'..'Z']

--Infinite List
infiniteList = [10,20..]

-- Repeating Values
many2s = take 10 (repeat 2)
many3s = replicate 10 3

--Cycling Through a List
cycleList = take 10 (cycle[1,2,3,4,5])

--Operations on a List
listTimes2 = [x * 2 | x <- [1..10], x * 3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

--Sorted Lists

sortedList = sort[9,1,6,4,3,1,2]

--Adding Values in different lists
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

--Filter
listBiggerThen5 = filter (>5) morePrimes

--TakeWhile
evensUpTo20 = takeWhile (<= 20) [2,4..]

--Multiplying Elements in List
multOfListL = foldl (*) 1 [2,3,4,5]
multOfListR = foldr (*) 1 [2,3,4,5]

-- List Comp
pow3List = [3^n | n <- [1..10]]
multTable = [[x*y | y <- [1..10]] | x <- [1..10]]

------------------------------------------Tuples-----------------------------------------------------
randTuple = (1, "Random Tuple")
bobSmith = ("Bob Smith", 52)

bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob", "Mary", "Jane"]
ages = [52, 77, 96]

namesnAges = zip names ages

-------------------------------------------------------Functions

addMe :: Int -> Int -> Int
addMe x y = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String

whatAge 16 = "You can Drive!"
whatAge 18 = "You can Vote!"
whatAge 21 = "You can drink!"
whatAge _ =  "Nothing Important"

-- Recursion -- 

factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Guards

isOdd :: Int -> Bool

isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

whatGrade :: Int -> String

whatGrade age
  | age == 5 = "Kindergarten"
  | age == 6 = "Elementary"
  | age == 7 = "Middle School"
  | otherwise = "Adult"


batAvgRating :: Double -> Double -> String

batAvgRating hits atBats
  | avg <= 0.200 = "Terrible Batting Average"
  | avg <= 0.250 = "Average Player"
  | avg <= 0.280 = "You're doing great!"
  | otherwise = "Excellent!"
  where avg = hits / atBats


getListItems :: [Int] -> String

getListItems [] = "Your list is Empty."
getListItems(x:[]) = "Your list starts with " ++ show x
getListItems(x:y:[]) = "Your List Contains " ++ show x ++ show y
getListItems(x:xs) = "Your First Item is " ++ show x ++ " And the rest is " ++ show xs

getFirstItem :: String -> String

getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++  [x]


-- Higher Order Function

times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1,2,3,4,5]


multBy4 :: [Int] -> [Int]

multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs


areStringsEq :: [Char] -> [Char] -> Bool

areStringsEq [] [] = True
areStringsEq(x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- Calling a function within a Function
-- (Int -> Int) Represents another function being called. 
-- func is a blank variable which can represent a function.

doMult :: (Int -> Int) -> Int
doMult func = func 3
num3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3

fourPlus3 = adds3 4

threePlusList = map adds3[1,2,3,4,5]

-- Lambdas
dbl1To10 = map (\x -> x * 2) [1..10]

-- If Statements
doubleEvenNumber y = 
  if(y `mod` 2 /= 0)
    then y
    else y * 2

getClass n = case n of
  5 -> "Go to Kindergarten"
  6 -> "Go To school"
  _ -> "Go Away"