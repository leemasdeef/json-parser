module Main where

data JsonValue
  = JsonNull
  | JsonBool Bool
  | JsonNumber Int -- using int only for simplicity
  | JsonString String
  | JsonArray [JsonValue]
  | JsonObject [(String, JsonValue)]
  deriving (Show, Eq)

-- TO-FIX: add proper error evaluation
newtype Parser x = Parser {runParser :: String -> Maybe (String, x)}

jsonNull :: Parser JsonValue
jsonNull = undefined

charP :: Char -> Parser Char
charP x =
  Parser
    ( \input ->
        case input of
          y : ys | y == x -> Just (ys, x)
          _ -> Nothing
    )

jsonValue :: Parser JsonValue
jsonValue = undefined

main :: IO ()
main = undefined