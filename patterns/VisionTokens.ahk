worker := A_WorkingDir "\vision_ai\run_token_worker.bat"
if !FileExist(worker)
    throw Error("Vision token worker is missing: " worker)

workerSpeed := IsSet(movespeed) ? movespeed : 28
workerParent := DllCall("GetCurrentProcessId", "UInt")
RunWait A_ComSpec ' /d /c ""' worker '" ' workerParent ' ' workerSpeed '"', A_WorkingDir, "Hide"
