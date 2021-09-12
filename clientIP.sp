#pragma semicolon 1

#define DEBUG

#define PLUGIN_AUTHOR ""
#define PLUGIN_VERSION "0.00"

#include <sourcemod>
#include <sdktools>

#pragma newdecls required

public Plugin myinfo = 
{
	name = "Ip Displayer",
	author = "Ghosty",
	description = "displayes client's ip on connect",
	version = "1.0",
	url = ""
};

public void OnPluginStart()
{
	char ClientIp[30]
	GetClientIP(int client, char[30] ClientIp, int ClientIp); 
	
	
	OnClientPutInServer(int client)
	{
	  PrintToChat(client, ClientIp);
	  Plugin_Handled;
	}
	
}
