#pragma semicolon 1

#define DEBUG

#define PLUGIN_AUTHOR "PauldeKoning"
#define PLUGIN_VERSION "1.00"

#include <sourcemod>
#include <sdktools>

#pragma newdecls required

public Plugin myinfo = 
{
	name = "Hello World",
	author = "PauldeKoning",
	description = "Prints 'Hello World!' to the server console",
	version = "1.00",
	url = "https://github.com/PauldeKoning"
};

public void OnPluginStart()
{
	PrintToServer("Hello World!");
}
