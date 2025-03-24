local Base64 = {}

function Base64.Encode(InputData)
	local Base64Characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
	
	return ((InputData:gsub('.', function(Character) 
		local Binary = ''
		local Byte = Character:byte()
		
		for i = 8, 1, -1 do 
			Binary = Binary .. (Byte % 2^i - Byte % 2^(i-1) > 0 and '1' or '0') 
		end
		
		return Binary
		
	end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(BinaryChunk)
		if (#BinaryChunk < 6) then return '' end
		local Value = 0
		
		for i = 1, 6 do 
			Value = Value + (BinaryChunk:sub(i, i) == '1' and 2^(6-i) or 0) 
		end
		
		return Base64Characters:sub(Value + 1, Value + 1)
	end)..({ '', '==', '=' })[#InputData % 3 + 1])
end

function Base64.Decode(EncodedData)
	local Base64Characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

	EncodedData = string.gsub(EncodedData, '[^' .. Base64Characters .. '=]', '')
	
	return (EncodedData:gsub('.', function(Character)
		if (Character == '=') then 
			return '' 
		end
		
		local BinaryString = ''
		local Index = Base64Characters:find(Character) - 1
		
		for i = 6, 1, -1 do
			BinaryString = BinaryString .. (Index % 2^i - Index % 2^(i-1) > 0 and '1' or '0')
		end
		
		return BinaryString
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(binaryChunk)
		if (#binaryChunk ~= 8) then 
			return '' 
		end
		
		local ByteValue = 0
		
		for i = 1, 8 do
			ByteValue = ByteValue + (binaryChunk:sub(i, i) == '1' and 2^(8-i) or 0)
		end
		
		return string.char(ByteValue)
	end))
end

function Base64.XorWithKey(Data, EncryptionKey)
	local Result = ""
	
	for i = 1, #Data do
		local DataCharacters = Data:sub(i, i)
		local keyChar = EncryptionKey:sub(((i - 1) % #EncryptionKey) + 1, ((i - 1) % #EncryptionKey) + 1)
		
		Result = Result .. string.char(bit32.bxor(string.byte(DataCharacters), string.byte(keyChar)))
	end
	
	return Result
end

return Base64
