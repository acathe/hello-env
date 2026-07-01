#!/usr/bin/env pwsh

function Main {
    Write-Output 'Hello, world!'
}

if ($MyInvocation.InvocationName -ne '.') {
    Main
}
