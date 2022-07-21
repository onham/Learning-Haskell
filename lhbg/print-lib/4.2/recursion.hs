

qReplicate :: Int -> a -> [a]

qReplicate number symbol =
    if number > 0
        then
            symbol : (qReplicate (number - 1) (symbol))
        else
            return []
