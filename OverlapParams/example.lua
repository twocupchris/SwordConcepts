while RunService.Stepped:Wait() do
	if ToolEquipped then
		local Overlap = workspace:GetPartBoundsInBox(Handle.CFrame, Handle.Size, Params)

		for _, Part in next, Overlap do
			if not table.find(PreviousOverlap, Part) then
				Blow(Part)
			end
		end

		for _, Part in next, PreviousOverlap do
			if not table.find(Overlap, Part) then
				TouchEnded(Part)
			end
		end

		PreviousOverlap = Overlap
	end
end