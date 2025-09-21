repeat task.wait() until game:IsLoaded()
game:GetService("ScriptContext"):SetTimeout(3.5)
task.wait(5)

if getconnections then
	for _, conn in pairs(getconnections(game:GetService("ScriptContext").Error)) do
		conn:Disable()
	end

	for _, link in pairs(getconnections(game:GetService("LogService").MessageOut)) do
		link:Disable()
	end
end
