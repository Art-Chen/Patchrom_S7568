.class Landroid/net/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfigStore$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IPCONFIG_FILE_VERSION:I = 0x2

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static sConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sCorpNetPriorityLimit:I

.field private static sLastCorporatePriority:I

.field private static sLastOpenPriority:I

.field private static sLastPriority:I

.field private static sNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpenNetPriorityLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 113
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    .line 130
    sput v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 132
    sput v2, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    .line 134
    sput v2, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    .line 136
    const/16 v0, 0x1388

    sput v0, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    .line 138
    sget v0, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    add-int/lit16 v0, v0, 0x1388

    sput v0, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 468
    return-void
.end method

.method private static addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "linkProperties"
    .parameter "config"

    .prologue
    .line 1628
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1629
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {p0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_0

    .line 1631
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_0
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 1632
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {p0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_1

    .line 1634
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1635
    .local v0, dns:Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 1637
    .end local v0           #dns:Ljava/net/InetAddress;
    :cond_2
    return-void
.end method

.method static addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 506
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 507
    .local v0, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 508
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1
.end method

.method private static addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 26
    .parameter "config"

    .prologue
    .line 1136
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1137
    .local v14, netId:I
    const/4 v15, 0x0

    .line 1139
    .local v15, newNetwork:Z
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_0

    .line 1140
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 1141
    .local v18, savedNetId:Ljava/lang/Integer;
    if-eqz v18, :cond_2

    .line 1142
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1153
    .end local v18           #savedNetId:Ljava/lang/Integer;
    :cond_0
    const/16 v19, 0x1

    .line 1157
    .local v19, updateFailed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    const-string/jumbo v22, "ssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 1162
    sget-boolean v22, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v22, :cond_3

    .line 1163
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set SSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1484
    :goto_0
    if-eqz v19, :cond_22

    .line 1485
    if-eqz v15, :cond_1

    .line 1486
    invoke-static {v14}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    .line 1487
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1489
    :cond_1
    new-instance v16, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    .line 1517
    .end local v19           #updateFailed:Z
    :goto_1
    return-object v16

    .line 1144
    .restart local v18       #savedNetId:Ljava/lang/Integer;
    :cond_2
    const/4 v15, 0x1

    .line 1145
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I

    move-result v14

    .line 1146
    if-gez v14, :cond_0

    .line 1147
    const-string v22, "Failed to add a network!"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1148
    new-instance v16, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_1

    .line 1165
    .end local v18           #savedNetId:Ljava/lang/Integer;
    .restart local v19       #updateFailed:Z
    :cond_3
    const-string v22, "failed to set SSID"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    const-string v22, "bssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 1174
    sget-boolean v22, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v22, :cond_5

    .line 1175
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set BSSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1177
    :cond_5
    const-string v22, "failed to set BSSID"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1183
    .local v5, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_7

    const-string/jumbo v22, "key_mgmt"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v5}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1188
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set key_mgmt: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1193
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1195
    .local v7, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_8

    const-string/jumbo v22, "proto"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v7}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 1200
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set proto: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1206
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Ljava/util/BitSet;->get(I)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1246
    const-string/jumbo v22, "psk_key_type"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 1250
    sget-boolean v22, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v22, :cond_9

    .line 1251
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set WAPI_PSK key type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1254
    :cond_9
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set WAPI_PSK key type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1260
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string/jumbo v22, "psk"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1265
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set psk: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1271
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Ljava/util/BitSet;->get(I)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1321
    const-string v22, "cert_index"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1325
    sget-boolean v22, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v22, :cond_c

    .line 1326
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set WAPI_CERT index: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1329
    :cond_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set WAPI_CERT index: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1332
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    const-string/jumbo v22, "wapi_as_cert"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 1337
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set WAPI_CERT as cert: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1342
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    const-string/jumbo v22, "wapi_user_cert"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1347
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set WAPI_CERT user cert: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1356
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1358
    .local v3, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_10

    const-string v22, "auth_alg"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 1363
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set auth_alg: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1368
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1371
    .local v6, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_11

    const-string/jumbo v22, "pairwise"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 1376
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set pairwise: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1381
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1383
    .local v4, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_12

    const-string v22, "group"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v4}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 1388
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set group: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_13

    const-string/jumbo v22, "psk"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 1400
    const-string v22, "failed to set psk"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1404
    :cond_13
    const/4 v10, 0x0

    .line 1405
    .local v10, hasSetKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    .line 1406
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_16

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_15

    .line 1410
    sget-object v22, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v22, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 1414
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set wep_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1417
    :cond_14
    const/4 v10, 0x1

    .line 1406
    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1422
    .end local v11           #i:I
    :cond_16
    if-eqz v10, :cond_17

    .line 1423
    const-string/jumbo v22, "wep_tx_keyidx"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1427
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1436
    .end local v3           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .end local v4           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v6           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v10           #hasSetKey:Z
    :cond_17
    const-string/jumbo v22, "priority"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_19

    .line 1440
    sget-boolean v22, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v22, :cond_18

    .line 1441
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set priority: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1444
    :cond_18
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set priority: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1448
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1c

    const-string/jumbo v23, "scan_ssid"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    const/16 v22, 0x1

    :goto_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 1452
    sget-boolean v22, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v22, :cond_1b

    .line 1453
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set hiddenSSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1448
    :cond_1a
    const/16 v22, 0x0

    goto :goto_3

    .line 1456
    :cond_1b
    const-string v22, "failed to set hiddenSSID"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1461
    :cond_1c
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v8, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v13, v8

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_4
    if-ge v12, v13, :cond_21

    aget-object v9, v8, v12

    .line 1462
    .local v9, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v21

    .line 1463
    .local v21, varName:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v20

    .line 1464
    .local v20, value:Ljava/lang/String;
    if-eqz v20, :cond_20

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_1d

    .line 1466
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_1e

    const-string v20, "NULL"

    .line 1468
    :cond_1d
    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 1472
    sget-boolean v22, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v22, :cond_1f

    .line 1473
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1466
    :cond_1e
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiConfigStore;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 1476
    :cond_1f
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1461
    :cond_20
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 1481
    .end local v9           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v20           #value:Ljava/lang/String;
    .end local v21           #varName:Ljava/lang/String;
    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1500
    .end local v5           #allowedKeyManagementString:Ljava/lang/String;
    .end local v7           #allowedProtocolsString:Ljava/lang/String;
    .end local v8           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_22
    sget-object v23, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v23

    .line 1501
    :try_start_0
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiConfiguration;

    .line 1502
    .local v17, sConfig:Landroid/net/wifi/WifiConfiguration;
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    if-nez v17, :cond_23

    .line 1504
    new-instance v17, Landroid/net/wifi/WifiConfiguration;

    .end local v17           #sConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1505
    .restart local v17       #sConfig:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v17

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1508
    :cond_23
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1510
    sget-object v23, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v23

    .line 1511
    :try_start_1
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1515
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v16

    .line 1516
    .local v16, result:Landroid/net/wifi/NetworkUpdateResult;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/net/wifi/NetworkUpdateResult;->setNetworkId(I)V

    goto/16 :goto_1

    .line 1502
    .end local v16           #result:Landroid/net/wifi/NetworkUpdateResult;
    .end local v17           #sConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 1513
    .restart local v17       #sConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_1
    move-exception v22

    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22
.end method

.method static clearIpConfiguration(I)V
    .locals 5
    .parameter "netId"

    .prologue
    .line 731
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 732
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 733
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 736
    .local v1, proxy:Landroid/net/ProxyProperties;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 737
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 739
    .end local v1           #proxy:Landroid/net/ProxyProperties;
    :cond_0
    monitor-exit v3

    .line 740
    return-void

    .line 739
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1919
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1930
    .local v0, key:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 1921
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1923
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0

    .line 1924
    .end local v0           #key:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0

    .line 1927
    .end local v0           #key:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static disableNetwork(I)Z
    .locals 1
    .parameter "netId"

    .prologue
    .line 582
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method static disableNetwork(II)Z
    .locals 6
    .parameter "netId"
    .parameter "reason"

    .prologue
    const/4 v5, 0x1

    .line 591
    sget-boolean v2, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableNetwork using Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z

    move-result v1

    .line 593
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 594
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 596
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v5, :cond_1

    .line 597
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 598
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 600
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(I)V

    .line 606
    return v1

    .line 600
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static dump()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1934
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1935
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string/jumbo v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1936
    .local v0, LS:Ljava/lang/String;
    const-string/jumbo v4, "sLastPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget v5, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1937
    const-string v4, "Configured networks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1938
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1939
    .local v1, conf:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1941
    .end local v1           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static edmCanEnableNetwork(IZZ)Z
    .locals 5
    .parameter "netId"
    .parameter "disableOthers"
    .parameter "showMsg"

    .prologue
    const/4 v1, 0x1

    .line 176
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 177
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 178
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    if-ltz p0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v1, :cond_0

    .line 180
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 182
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    .line 184
    :goto_0
    return v1

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 186
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static enableAllNetworks()V
    .locals 7

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, networkEnabledStateChanged:Z
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 222
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 223
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 226
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/net/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    .line 233
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    const/4 v2, 0x1

    .line 235
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 250
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 237
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_2
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    const/4 v2, 0x1

    .line 243
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 245
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    if-eqz v2, :cond_5

    .line 253
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 254
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 256
    :cond_5
    return-void
.end method

.method static enableAllNetworks(I)V
    .locals 7
    .parameter "reason"

    .prologue
    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, networkEnabledStateChanged:Z
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 261
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 262
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 263
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v3, p0, :cond_0

    .line 267
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/net/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    const/4 v2, 0x1

    .line 274
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 280
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 276
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    if-eqz v2, :cond_3

    .line 283
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 284
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 286
    :cond_3
    return-void
.end method

.method static enableNetwork(IZ)Z
    .locals 1
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 543
    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v0

    .line 544
    .local v0, ret:Z
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 545
    return v0
.end method

.method static enableNetworkWithoutBroadcast(IZ)Z
    .locals 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    const/4 v1, 0x0

    .line 551
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/net/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v1

    .line 557
    :cond_1
    invoke-static {p0, p1}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v1

    .line 559
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 560
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 561
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 562
    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 563
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    .line 565
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 569
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    if-eqz p1, :cond_0

    .line 572
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    goto :goto_0

    .line 569
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static forgetNetwork(I)V
    .locals 4
    .parameter "netId"

    .prologue
    .line 480
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 482
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 483
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 484
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 485
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 490
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 494
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks(I)V

    .line 495
    return-void

    .line 488
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 492
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1945
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static getConfiguredNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 199
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 200
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    return-object v2
.end method

.method static getIpConfiguration(I)Landroid/net/DhcpInfoInternal;
    .locals 8
    .parameter "netId"

    .prologue
    .line 687
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 688
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    .line 690
    .local v5, linkProperties:Landroid/net/LinkProperties;
    if-eqz v5, :cond_1

    .line 691
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 692
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 693
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 694
    .local v4, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 695
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 696
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v0, v6}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 698
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_0
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v7

    iput v7, v0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 699
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 700
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 702
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 706
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_1
    return-object v0
.end method

.method static getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 4
    .parameter "netId"

    .prologue
    .line 672
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 673
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 674
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v2

    .line 676
    :goto_0
    return-object v1

    .line 675
    :cond_0
    monitor-exit v2

    .line 676
    const/4 v1, 0x0

    goto :goto_0

    .line 675
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getProxyProperties(I)Landroid/net/ProxyProperties;
    .locals 3
    .parameter "netId"

    .prologue
    .line 747
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    .line 748
    .local v0, linkProperties:Landroid/net/LinkProperties;
    if-eqz v0, :cond_0

    .line 749
    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    .line 751
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSpecificNetworks(I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .parameter "netId"

    .prologue
    .line 208
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 209
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 210
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v1, v0

    .line 211
    monitor-exit v3

    .line 212
    return-object v1

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading config and enabling all networks"

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 163
    :cond_0
    sput-object p0, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 165
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 166
    return-void
.end method

.method static isUsingStaticIp(I)Z
    .locals 4
    .parameter "netId"

    .prologue
    .line 758
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 759
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 760
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_0

    .line 761
    const/4 v1, 0x1

    monitor-exit v2

    .line 764
    :goto_0
    return v1

    .line 763
    :cond_0
    monitor-exit v2

    .line 764
    const/4 v1, 0x0

    goto :goto_0

    .line 763
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static loadConfiguredNetworks()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 782
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, listStr:Ljava/lang/String;
    sput v8, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 784
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PrivateFirst"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 785
    sput v8, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    .line 786
    sput v8, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    .line 790
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v7

    .line 791
    :try_start_0
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 792
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 794
    if-nez v4, :cond_1

    .line 795
    monitor-exit v7

    .line 861
    :goto_0
    return-void

    .line 797
    :cond_1
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_f

    .line 800
    aget-object v6, v3, v2

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 802
    .local v5, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    :try_start_2
    array-length v6, v5

    if-le v6, v11, :cond_c

    .line 809
    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-string v8, "[CURRENT]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v12, :cond_a

    .line 810
    const/4 v6, 0x0

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 818
    :goto_2
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 820
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "PrivateFirst"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 821
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    if-ge v6, v8, :cond_2

    .line 822
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    .line 824
    :cond_2
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    if-le v6, v8, :cond_3

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    if-ge v6, v8, :cond_3

    .line 825
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    .line 827
    :cond_3
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    if-le v6, v8, :cond_4

    .line 828
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 836
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "PrivateFirst"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 837
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-nez v6, :cond_8

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ne v6, v10, :cond_8

    .line 838
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 839
    :cond_5
    sget v6, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 841
    :cond_6
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 842
    sget v6, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 844
    :cond_7
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 845
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    if-eqz v6, :cond_e

    .line 846
    sget v6, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 852
    :cond_8
    :goto_4
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    .line 853
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 855
    :cond_9
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_5

    .line 811
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_a
    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-string v8, "[DISABLED]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v12, :cond_b

    .line 812
    const/4 v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_2

    .line 858
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i:I
    .end local v3           #lines:[Ljava/lang/String;
    .end local v5           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 814
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #i:I
    .restart local v3       #lines:[Ljava/lang/String;
    .restart local v5       #result:[Ljava/lang/String;
    :cond_b
    const/4 v6, 0x2

    :try_start_3
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_2

    .line 816
    :cond_c
    const/4 v6, 0x2

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_2

    .line 831
    :cond_d
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-le v6, v8, :cond_4

    .line 832
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    goto/16 :goto_3

    .line 848
    :cond_e
    const/4 v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_4

    .line 858
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #result:[Ljava/lang/String;
    :cond_f
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 860
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1953
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1949
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 1899
    array-length v1, p1

    .line 1901
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1903
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1904
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1912
    .end local v0           #i:I
    :goto_1
    return v0

    .line 1903
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1910
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1912
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 1879
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1880
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1884
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 1886
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1887
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1891
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 1892
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1895
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static markAllNetworksDisabled()V
    .locals 1

    .prologue
    .line 890
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 891
    return-void
.end method

.method private static markAllNetworksDisabledExcept(I)V
    .locals 5
    .parameter "netId"

    .prologue
    const/4 v4, 0x1

    .line 877
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 878
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 879
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p0, :cond_0

    .line 880
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v4, :cond_0

    .line 881
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 882
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 886
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    return-void
.end method

.method private static readIpAndProxyConfigurations()V
    .locals 23

    .prologue
    .line 1003
    const/4 v8, 0x0

    .line 1005
    .local v8, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    sget-object v21, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 1008
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v9, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 1009
    .local v18, version:I
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 1010
    const-string v19, "Bad version on IP configuration file, ignore read"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1122
    if-eqz v9, :cond_0

    .line 1124
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v8, v9

    .line 1128
    .end local v9           #in:Ljava/io/DataInputStream;
    .end local v18           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 1063
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v5, exclusionList:Ljava/lang/String;
    .local v7, id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .local v10, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v11, key:Ljava/lang/String;
    .local v13, linkProperties:Landroid/net/LinkProperties;
    .local v14, proxyHost:Ljava/lang/String;
    .local v15, proxyPort:I
    .local v17, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_2
    :try_start_3
    const-string v19, "eos"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v19

    if-eqz v19, :cond_10

    .line 1073
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_12

    .line 1074
    :try_start_4
    sget-object v20, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1075
    :try_start_5
    sget-object v19, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    sget-object v21, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1078
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_11

    .line 1079
    const-string v19, "configuration found for missing network, ignored"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1113
    :goto_2
    :pswitch_0
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1015
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_3
    :goto_3
    const/4 v7, -0x1

    .line 1016
    .restart local v7       #id:I
    :try_start_6
    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1017
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1018
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    .line 1019
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    const/4 v14, 0x0

    .line 1020
    .restart local v14       #proxyHost:Ljava/lang/String;
    const/4 v15, -0x1

    .line 1021
    .restart local v15       #proxyPort:I
    const/4 v5, 0x0

    .line 1025
    .restart local v5       #exclusionList:Ljava/lang/String;
    :goto_4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v11

    .line 1027
    .restart local v11       #key:Ljava/lang/String;
    :try_start_7
    const-string v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1028
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    goto :goto_4

    .line 1029
    :cond_4
    const-string v19, "ipAssignment"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1030
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v10

    goto :goto_4

    .line 1031
    :cond_5
    const-string/jumbo v19, "linkAddress"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1032
    new-instance v12, Landroid/net/LinkAddress;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1034
    .local v12, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v13, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 1068
    .end local v12           #linkAddr:Landroid/net/LinkAddress;
    :catch_0
    move-exception v4

    .line 1069
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignore invalid address while reading"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 1118
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catch_1
    move-exception v19

    move-object v8, v9

    .line 1122
    .end local v9           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_5
    if-eqz v8, :cond_1

    .line 1124
    :try_start_9
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 1125
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 1035
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_6
    :try_start_a
    const-string v19, "gateway"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1036
    const/4 v3, 0x0

    .line 1037
    .local v3, dest:Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 1038
    .local v6, gateway:Ljava/net/InetAddress;
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1040
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 1051
    :cond_7
    :goto_6
    new-instance v19, Landroid/net/RouteInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_4

    .line 1119
    .end local v3           #dest:Landroid/net/LinkAddress;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v6           #gateway:Ljava/net/InetAddress;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catch_3
    move-exception v4

    move-object v8, v9

    .line 1120
    .end local v9           #in:Ljava/io/DataInputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_7
    :try_start_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error parsing configuration"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1122
    if-eqz v8, :cond_1

    .line 1124
    :try_start_c
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    .line 1125
    :catch_4
    move-exception v19

    goto/16 :goto_1

    .line 1042
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v3       #dest:Landroid/net/LinkAddress;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v6       #gateway:Ljava/net/InetAddress;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_8
    :try_start_d
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1043
    new-instance v3, Landroid/net/LinkAddress;

    .end local v3           #dest:Landroid/net/LinkAddress;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1047
    .restart local v3       #dest:Landroid/net/LinkAddress;
    :cond_9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1048
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_6

    .line 1052
    .end local v3           #dest:Landroid/net/LinkAddress;
    .end local v6           #gateway:Ljava/net/InetAddress;
    :cond_a
    const-string v19, "dns"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1053
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    .line 1122
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catchall_0
    move-exception v19

    move-object v8, v9

    .end local v9           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_8
    if-eqz v8, :cond_b

    .line 1124
    :try_start_e
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1125
    :cond_b
    :goto_9
    throw v19

    .line 1055
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_c
    :try_start_f
    const-string/jumbo v19, "proxySettings"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1056
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v17

    goto/16 :goto_4

    .line 1057
    :cond_d
    const-string/jumbo v19, "proxyHost"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1058
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 1059
    :cond_e
    const-string/jumbo v19, "proxyPort"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1060
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    goto/16 :goto_4

    .line 1061
    :cond_f
    const-string v19, "exclusionList"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1062
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 1066
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignore unknown key "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "while reading"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_4

    .line 1081
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_11
    :try_start_10
    iput-object v13, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1082
    sget-object v19, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v21

    aget v19, v19, v21

    packed-switch v19, :pswitch_data_0

    .line 1091
    const-string v19, "Ignore invalid ip assignment while reading"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1095
    :goto_a
    :pswitch_1
    sget-object v19, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v21

    aget v19, v19, v21

    packed-switch v19, :pswitch_data_1

    .line 1109
    const-string v19, "Ignore invalid proxy settings while reading"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1113
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 1085
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    :try_start_12
    iput-object v10, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_a

    .line 1097
    :pswitch_3
    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1098
    new-instance v16, Landroid/net/ProxyProperties;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1100
    .local v16, proxyProperties:Landroid/net/ProxyProperties;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_2

    .line 1103
    .end local v16           #proxyProperties:Landroid/net/ProxyProperties;
    :pswitch_4
    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_2

    .line 1115
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    :try_start_13
    const-string v19, "Missing id while parsing configuration"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_3

    .line 1125
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catch_5
    move-exception v19

    goto/16 :goto_0

    .end local v9           #in:Ljava/io/DataInputStream;
    .end local v18           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v20

    goto/16 :goto_9

    .line 1122
    :catchall_2
    move-exception v19

    goto/16 :goto_8

    .line 1119
    :catch_7
    move-exception v4

    goto/16 :goto_7

    .line 1118
    :catch_8
    move-exception v19

    goto/16 :goto_5

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1095
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .parameter "config"

    .prologue
    const/4 v10, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 1647
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1648
    .local v6, netId:I
    if-gez v6, :cond_1

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1658
    :cond_1
    const-string/jumbo v11, "ssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1659
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1660
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1703
    :goto_1
    const-string v11, "bssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1704
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1705
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1710
    :goto_2
    const-string/jumbo v11, "priority"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1711
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1712
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1714
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1719
    :cond_2
    :goto_3
    const-string/jumbo v11, "scan_ssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1720
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1721
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1723
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    :cond_3
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1728
    :cond_4
    :goto_4
    const-string/jumbo v10, "wep_tx_keyidx"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1729
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1730
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1732
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1737
    :cond_5
    :goto_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    const/4 v10, 0x4

    if-ge v2, v10, :cond_9

    .line 1738
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1740
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1741
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    .line 1737
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1662
    .end local v2           #i:I
    :cond_6
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 1707
    :cond_7
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_2

    .line 1743
    .restart local v2       #i:I
    :cond_8
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v12, v10, v2

    goto :goto_7

    .line 1747
    :cond_9
    const-string/jumbo v10, "psk"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1748
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1749
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1754
    :goto_8
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "proto"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1756
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1757
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1758
    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v5, :cond_c

    aget-object v7, v0, v3

    .line 1759
    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1761
    .local v4, index:I
    if-ltz v4, :cond_a

    .line 1762
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1758
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1751
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_b
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 1767
    :cond_c
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "key_mgmt"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1769
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1770
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1771
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_a
    if-ge v3, v5, :cond_e

    aget-object v7, v0, v3

    .line 1772
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1774
    .restart local v4       #index:I
    if-ltz v4, :cond_d

    .line 1775
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1771
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1780
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_e
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "auth_alg"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1782
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1783
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1784
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_b
    if-ge v3, v5, :cond_10

    aget-object v7, v0, v3

    .line 1785
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1787
    .restart local v4       #index:I
    if-ltz v4, :cond_f

    .line 1788
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1784
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1793
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_10
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "pairwise"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1795
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 1796
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1797
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_c
    if-ge v3, v5, :cond_12

    aget-object v7, v0, v3

    .line 1798
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1800
    .restart local v4       #index:I
    if-ltz v4, :cond_11

    .line 1801
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1797
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1806
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_12
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "group"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1808
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1809
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1810
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_d
    if-ge v3, v5, :cond_14

    aget-object v7, v0, v3

    .line 1811
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1813
    .restart local v4       #index:I
    if-ltz v4, :cond_13

    .line 1814
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1810
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1820
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_14
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_e
    if-ge v3, v5, :cond_17

    aget-object v1, v0, v3

    .line 1821
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1823
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 1824
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_15

    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1825
    :cond_15
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1820
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1830
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_17
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1831
    const-string/jumbo v10, "psk_key_type"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1832
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 1833
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***WAPI : readNetworkVariables WAPI_PSK key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1834
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1836
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1837
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 1841
    :cond_18
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1842
    const-string v10, "cert_index"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1843
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1844
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***WAPI : readNetworkVariables WAPI_CERT index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1845
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 1847
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1851
    :cond_19
    :goto_f
    const-string/jumbo v10, "wapi_as_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1852
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***WAPI : readNetworkVariables WAPI_CERT as cert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1853
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1854
    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1858
    :goto_10
    const-string/jumbo v10, "wapi_user_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1859
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***WAPI : readNetworkVariables WAPI_CERT user cert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1860
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 1861
    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_0

    .line 1856
    :cond_1a
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_10

    .line 1863
    :cond_1b
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_0

    .line 1848
    :catch_1
    move-exception v10

    goto :goto_f

    .line 1733
    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_2
    move-exception v10

    goto/16 :goto_5

    .line 1724
    :catch_3
    move-exception v10

    goto/16 :goto_4

    .line 1715
    :catch_4
    move-exception v11

    goto/16 :goto_3
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 1870
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    .line 1871
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static removeNetwork(I)Z
    .locals 5
    .parameter "netId"

    .prologue
    .line 520
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v1

    .line 521
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 522
    if-eqz v1, :cond_0

    .line 523
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 524
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 525
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 531
    return v1

    .line 529
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static saveConfig()Z
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    move-result v0

    return v0
.end method

.method static saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 7
    .parameter "config"

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 421
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, v6, :cond_1

    move v1, v3

    .line 422
    .local v1, newNetwork:Z
    :goto_0
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 423
    .local v2, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 425
    .local v0, netId:I
    if-eqz v1, :cond_0

    if-eq v0, v6, :cond_0

    .line 428
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5, v4, v3}, Landroid/net/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    invoke-static {v0, v4}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    .line 430
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 431
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x2

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 432
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 443
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 444
    return-object v2

    .end local v0           #netId:I
    .end local v1           #newNetwork:Z
    .end local v2           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_1
    move v1, v4

    .line 421
    goto :goto_0

    .line 432
    .restart local v0       #netId:I
    .restart local v1       #newNetwork:Z
    .restart local v2       #result:Landroid/net/wifi/NetworkUpdateResult;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static selectNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .parameter "config"

    .prologue
    const/4 v2, -0x1

    .line 301
    if-eqz p0, :cond_1

    .line 302
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 303
    .local v1, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 304
    .local v0, netId:I
    if-eq v0, v2, :cond_0

    .line 305
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)V

    .line 311
    .end local v0           #netId:I
    .end local v1           #result:Landroid/net/wifi/NetworkUpdateResult;
    :goto_0
    return v0

    .line 307
    .restart local v0       #netId:I
    .restart local v1       #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #netId:I
    .end local v1           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_1
    move v0, v2

    .line 311
    goto :goto_0
.end method

.method static selectNetwork(I)V
    .locals 9
    .parameter "netId"

    .prologue
    const v8, 0xf4240

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 326
    const-string v3, "WifiConfigStore"

    const-string v4, "Selected network with id"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PrivateFirst"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 329
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-eq v3, v5, :cond_0

    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-gt v3, v8, :cond_0

    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    sget v4, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    if-gt v3, v4, :cond_0

    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    sget v4, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    if-le v3, v4, :cond_3

    .line 330
    :cond_0
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 331
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 332
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v5, :cond_1

    .line 333
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 334
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_0

    .line 337
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    sget v3, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 339
    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    .line 340
    sget v3, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    .line 357
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 358
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 360
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PrivateFirst"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 361
    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tempconfig netid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 364
    .local v2, tempconfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 365
    :cond_4
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    sget v4, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    if-lt v3, v4, :cond_5

    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    sget v4, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    if-le v3, v4, :cond_d

    .line 366
    :cond_5
    sget v3, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    .line 367
    sget v3, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 373
    :cond_6
    :goto_2
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 374
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    sget v4, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_e

    .line 375
    sget v3, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 376
    sget v3, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 382
    :cond_7
    :goto_3
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 383
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eqz v3, :cond_10

    .line 385
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    sget v4, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_f

    .line 386
    sget v3, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 387
    sget v3, Landroid/net/wifi/WifiConfigStore;->sCorpNetPriorityLimit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 401
    :cond_8
    :goto_4
    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "written priority"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v2           #tempconfig:Landroid/net/wifi/WifiConfiguration;
    :goto_5
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    .line 406
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 409
    invoke-static {p0, v7}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 413
    return-void

    .line 344
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_9
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-eq v3, v5, :cond_a

    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-le v3, v8, :cond_3

    .line 345
    :cond_a
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 346
    :try_start_2
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 347
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v5, :cond_b

    .line 348
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 349
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_6

    .line 352
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_c
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    goto/16 :goto_1

    .line 369
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #tempconfig:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastCorporatePriority:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_2

    .line 378
    :cond_e
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_3

    .line 389
    :cond_f
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_4

    .line 393
    :cond_10
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    if-eqz v3, :cond_11

    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    sget v4, Landroid/net/wifi/WifiConfigStore;->sOpenNetPriorityLimit:I

    if-le v3, v4, :cond_12

    .line 394
    :cond_11
    sput v7, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    .line 395
    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_4

    .line 397
    :cond_12
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastOpenPriority:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_4

    .line 403
    .end local v2           #tempconfig:Landroid/net/wifi/WifiConfiguration;
    :cond_13
    sget v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_5
.end method

.method private static sendConfiguredNetworksChangedBroadcast()V
    .locals 2

    .prologue
    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 770
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 771
    return-void
.end method

.method private static sendConfiguredNetworksChangedBroadcast(I)V
    .locals 2
    .parameter "netId"

    .prologue
    .line 775
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 777
    const-string/jumbo v1, "networkId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 779
    return-void
.end method

.method static setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V
    .locals 5
    .parameter "netId"
    .parameter "dhcpInfo"

    .prologue
    .line 713
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 715
    .local v1, linkProperties:Landroid/net/LinkProperties;
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 716
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 717
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 719
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 722
    :cond_0
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 724
    :cond_1
    monitor-exit v3

    .line 725
    return-void

    .line 724
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .parameter "config"

    .prologue
    .line 656
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 657
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 660
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 665
    :goto_0
    return-object v0

    .line 662
    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 663
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method static startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .parameter "config"

    .prologue
    .line 621
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 622
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromAccessPointCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 625
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 630
    :goto_0
    return-object v0

    .line 627
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 628
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method static startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .parameter "config"

    .prologue
    .line 639
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 640
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromDeviceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 642
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 644
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 649
    :goto_0
    return-object v0

    .line 646
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 647
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method static updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsInfo;)V
    .locals 4
    .parameter "netId"
    .parameter "wpsConfig"

    .prologue
    .line 864
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 865
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 866
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 867
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 868
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 869
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 870
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 872
    :cond_0
    monitor-exit v2

    .line 873
    return-void

    .line 872
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "netId"
    .parameter "state"

    .prologue
    .line 448
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 449
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 450
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 451
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    monitor-exit v2

    .line 472
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 453
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v1, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 470
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 455
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    const/4 v1, 0x0

    :try_start_1
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 462
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 463
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeIpAndProxyConfigurations()V
    .locals 18

    .prologue
    .line 895
    const/4 v10, 0x0

    .line 897
    .local v10, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v16, Ljava/io/FileOutputStream;

    sget-object v17, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 900
    .end local v10           #out:Ljava/io/DataOutputStream;
    .local v11, out:Ljava/io/DataOutputStream;
    const/4 v15, 0x2

    :try_start_1
    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 902
    sget-object v16, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 903
    :try_start_2
    sget-object v15, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v14, 0x0

    .line 907
    .local v14, writeToFile:Z
    :try_start_3
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 908
    .local v9, linkProperties:Landroid/net/LinkProperties;
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_0

    .line 949
    const-string v15, "Ignore invalid ip assignment while writing"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 953
    :goto_1
    :pswitch_0
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_1

    .line 976
    const-string v15, "Ignore invalid proxy settings while writing"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 979
    :goto_2
    :pswitch_1
    if-eqz v14, :cond_0

    .line 980
    const-string v15, "id"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 981
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 986
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :cond_0
    :goto_3
    :try_start_4
    const-string v15, "eos"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 988
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v14           #writeToFile:Z
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 990
    :catch_0
    move-exception v3

    move-object v10, v11

    .line 991
    .end local v11           #out:Ljava/io/DataOutputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :goto_4
    :try_start_6
    const-string v15, "Error writing data file"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 993
    if-eqz v10, :cond_1

    .line 995
    :try_start_7
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 999
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_5
    return-void

    .line 910
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    .restart local v14       #writeToFile:Z
    :pswitch_2
    :try_start_8
    const-string v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 911
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 913
    .local v8, linkAddr:Landroid/net/LinkAddress;
    const-string/jumbo v15, "linkAddress"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 983
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #linkAddr:Landroid/net/LinkAddress;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :catch_1
    move-exception v3

    .line 984
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failure in writing "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 917
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    :cond_2
    :try_start_a
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 918
    .local v13, route:Landroid/net/RouteInfo;
    const-string v15, "gateway"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v2

    .line 920
    .local v2, dest:Landroid/net/LinkAddress;
    if-eqz v2, :cond_3

    .line 921
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 922
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 927
    :goto_8
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 928
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 929
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_7

    .line 925
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8

    .line 931
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_7

    .line 934
    .end local v2           #dest:Landroid/net/LinkAddress;
    .end local v13           #route:Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 935
    .local v7, inetAddr:Ljava/net/InetAddress;
    const-string v15, "dns"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_9

    .line 938
    .end local v7           #inetAddr:Ljava/net/InetAddress;
    :cond_6
    const/4 v14, 0x1

    .line 939
    goto/16 :goto_1

    .line 941
    .end local v6           #i$:Ljava/util/Iterator;
    :pswitch_3
    const-string v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 942
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 943
    const/4 v14, 0x1

    .line 944
    goto/16 :goto_1

    .line 955
    :pswitch_4
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 956
    .local v12, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, exclusionList:Ljava/lang/String;
    const-string/jumbo v15, "proxySettings"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 958
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 959
    const-string/jumbo v15, "proxyHost"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 961
    const-string/jumbo v15, "proxyPort"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getPort()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 963
    const-string v15, "exclusionList"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 965
    const/4 v14, 0x1

    .line 966
    goto/16 :goto_2

    .line 968
    .end local v4           #exclusionList:Ljava/lang/String;
    .end local v12           #proxyProperties:Landroid/net/ProxyProperties;
    :pswitch_5
    const-string/jumbo v15, "proxySettings"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 969
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1

    .line 970
    const/4 v14, 0x1

    .line 971
    goto/16 :goto_2

    .line 988
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #writeToFile:Z
    :cond_7
    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 993
    if-eqz v11, :cond_9

    .line 995
    :try_start_c
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object v10, v11

    .line 996
    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_5

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v15

    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_5

    .line 993
    :catchall_1
    move-exception v15

    :goto_a
    if-eqz v10, :cond_8

    .line 995
    :try_start_d
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 996
    :cond_8
    :goto_b
    throw v15

    .local v3, e:Ljava/io/IOException;
    :catch_3
    move-exception v15

    goto/16 :goto_5

    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v16

    goto :goto_b

    .line 993
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v15

    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto :goto_a

    .line 990
    :catch_5
    move-exception v3

    goto/16 :goto_4

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    :cond_9
    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_5

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 953
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private static writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 17
    .parameter "currentConfig"
    .parameter "newConfig"

    .prologue
    .line 1524
    const/4 v6, 0x0

    .line 1525
    .local v6, ipChanged:Z
    const/4 v13, 0x0

    .line 1526
    .local v13, proxyChanged:Z
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    .line 1528
    .local v8, linkProperties:Landroid/net/LinkProperties;
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1563
    const-string v15, "Ignore invalid ip assignment during write"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1567
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1

    .line 1587
    const-string v15, "Ignore invalid proxy configuration during write"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1591
    :cond_1
    :goto_1
    :pswitch_1
    if-nez v6, :cond_f

    .line 1592
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1604
    :goto_2
    if-nez v13, :cond_11

    .line 1605
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1618
    :cond_2
    :goto_3
    if-nez v6, :cond_3

    if-eqz v13, :cond_4

    .line 1619
    :cond_3
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1620
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1621
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1623
    :cond_4
    new-instance v15, Landroid/net/wifi/NetworkUpdateResult;

    invoke-direct {v15, v6, v13}, Landroid/net/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v15

    .line 1530
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    .line 1532
    .local v3, currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v11

    .line 1534
    .local v11, newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 1535
    .local v1, currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v9

    .line 1536
    .local v9, newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    .line 1537
    .local v4, currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v12

    .line 1539
    .local v12, newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    invoke-interface {v3, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_9

    :cond_5
    const/4 v7, 0x1

    .line 1542
    .local v7, linkAddressesDiffer:Z
    :goto_4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    invoke-interface {v1, v9}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_a

    :cond_6
    const/4 v5, 0x1

    .line 1544
    .local v5, dnsesDiffer:Z
    :goto_5
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-interface {v4, v12}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_b

    :cond_7
    const/4 v14, 0x1

    .line 1547
    .local v14, routesDiffer:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    if-nez v7, :cond_8

    if-nez v5, :cond_8

    if-eqz v14, :cond_0

    .line 1551
    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1539
    .end local v5           #dnsesDiffer:Z
    .end local v7           #linkAddressesDiffer:Z
    .end local v14           #routesDiffer:Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 1542
    .restart local v7       #linkAddressesDiffer:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 1544
    .restart local v5       #dnsesDiffer:Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 1555
    .end local v1           #currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v3           #currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v4           #currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v5           #dnsesDiffer:Z
    .end local v7           #linkAddressesDiffer:Z
    .end local v9           #newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v11           #newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v12           #newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 1556
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1569
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v10

    .line 1570
    .local v10, newHttpProxy:Landroid/net/ProxyProperties;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    .line 1572
    .local v2, currentHttpProxy:Landroid/net/ProxyProperties;
    if-eqz v10, :cond_d

    .line 1573
    invoke-virtual {v10, v2}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const/4 v13, 0x1

    :goto_7
    goto/16 :goto_1

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    .line 1575
    :cond_d
    if-eqz v2, :cond_e

    const/4 v13, 0x1

    .line 1577
    :goto_8
    goto/16 :goto_1

    .line 1575
    :cond_e
    const/4 v13, 0x0

    goto :goto_8

    .line 1579
    .end local v2           #currentHttpProxy:Landroid/net/ProxyProperties;
    .end local v10           #newHttpProxy:Landroid/net/ProxyProperties;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 1580
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1594
    :cond_f
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1595
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1596
    sget-boolean v15, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v15, :cond_10

    .line 1597
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IP config changed SSID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " linkProperties: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1600
    :cond_10
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IP config changed, linkProperties: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1607
    :cond_11
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1608
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1609
    sget-boolean v15, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v15, :cond_12

    .line 1610
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "proxy changed SSID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 1613
    :goto_9
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 1614
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " proxyProperties: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1612
    :cond_12
    const-string/jumbo v15, "proxy changed"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 1567
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
