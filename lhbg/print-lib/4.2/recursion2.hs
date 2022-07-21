even :: Int -> Bool
odd :: Int -> Bool

even num = 
    if n == 0 
        then
            return True
        else
            odd (num-1)

odd num = 
    if n == 0
        then 
            return False
        else
            even (num-1)