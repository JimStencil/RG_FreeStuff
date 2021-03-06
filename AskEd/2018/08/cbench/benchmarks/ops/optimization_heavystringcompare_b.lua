-- =============================================================
-- Copyright Roaming Gamer, LLC. 2009-2013
-- =============================================================
local benchtype = "ops" -- Measures Raw Operations Per Second
local name = "Optimization: Heavy String Comparison - 'Enum'"
local benchOuter = 30 -- Times to run benchmark
local benchInner = 100000 -- Number of innner loops to run

-- Any prep work you need to do before starting the benchmark  (not measured)
local function prep( group )
end

-- Any cleanup work you need to do after the benchmark (not measured)
local function cleanup( group )
end

local myString = 1
local enumTable = {
    ["hi"] = 1,
    ["do"] = 2,
    ["lol"] = 3,
}

-- The actual benchmark (measured)
local function bench( numOps, group  )
	for i = 1, numOps do
		if myString == enumTable["hi"] or myString == enumTable["do"] or myString == enumTable["lol"] then	end
	end
end

-- DO NOT EDIT BELOW THIS LINE
local public = {}
public.benchtype = benchtype
public.name = name
public.prep = prep
public.cleanup = cleanup
public.bench = bench
public.iterations = benchOuter
public.numOps = benchInner

return public