.class public Landroid/net/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field public static final WIFI_NATIVE_CMD_AUTO_CONNECTION:I = 0x1

.field public static final WIFI_NATIVE_CMD_CMCC_MANUAL_CONNECTION:I = 0x9

.field public static final WIFI_NATIVE_CMD_DUMMY_EXIT_P2P:I = 0x5

.field public static final WIFI_NATIVE_CMD_DUMMY_EXIT_STA:I = 0x6

.field public static final WIFI_NATIVE_CMD_GET_COUNTRY_REV:I = 0xa0

.field public static final WIFI_NATIVE_CMD_GET_OKC_MODE:I = 0xac

.field public static final WIFI_NATIVE_CMD_GET_ROAM_DELTA:I = 0x66

.field public static final WIFI_NATIVE_CMD_GET_ROAM_SCAN_CHANNELS:I = 0x6c

.field public static final WIFI_NATIVE_CMD_GET_ROAM_SCAN_CONTROL:I = 0x6a

.field public static final WIFI_NATIVE_CMD_GET_ROAM_SCAN_PERIOD:I = 0x68

.field public static final WIFI_NATIVE_CMD_GET_ROAM_TRIGGER:I = 0x64

.field public static final WIFI_NATIVE_CMD_GET_SCAN_CHANNEL_TIME:I = 0x82

.field public static final WIFI_NATIVE_CMD_GET_SCAN_HOME_AWAY_TIME:I = 0x86

.field public static final WIFI_NATIVE_CMD_GET_SCAN_HOME_TIME:I = 0x84

.field public static final WIFI_NATIVE_CMD_GET_SCAN_NPROBES:I = 0x88

.field public static final WIFI_NATIVE_CMD_GET_WES_MODE:I = 0xaa

.field public static final WIFI_NATIVE_CMD_HOTSPOT20_ENABLE:I = 0xe

.field public static final WIFI_NATIVE_CMD_HOTSPOT20_ROAM_ENABLE:I = 0xf

.field public static final WIFI_NATIVE_CMD_INIT:I = 0x0

.field public static final WIFI_NATIVE_CMD_INIT_SCAN_INTERVAL:I = 0x2

.field public static final WIFI_NATIVE_CMD_INTELLIGENT_SCAN:I = 0x8

.field public static final WIFI_NATIVE_CMD_P2P_GROUP_ADD_CHANNEL:I = 0x7

.field public static final WIFI_NATIVE_CMD_REASSOC:I = 0x96

.field public static final WIFI_NATIVE_CMD_SEND_ACTION_FRAME:I = 0x97

.field public static final WIFI_NATIVE_CMD_SET_AMPDU_MPDU:I = 0xa

.field public static final WIFI_NATIVE_CMD_SET_COUNTRY_REV:I = 0xa1

.field public static final WIFI_NATIVE_CMD_SET_ESTABLISH_SUP_CONNECTION:I = 0xd

.field public static final WIFI_NATIVE_CMD_SET_MINIMIZE_RETRY:I = 0xc

.field public static final WIFI_NATIVE_CMD_SET_OKC_MODE:I = 0xad

.field public static final WIFI_NATIVE_CMD_SET_P2P:I = 0x3

.field public static final WIFI_NATIVE_CMD_SET_ROAM_DELTA:I = 0x67

.field public static final WIFI_NATIVE_CMD_SET_ROAM_SCAN_CHANNELS:I = 0x6d

.field public static final WIFI_NATIVE_CMD_SET_ROAM_SCAN_CONTROL:I = 0x6b

.field public static final WIFI_NATIVE_CMD_SET_ROAM_SCAN_PERIOD:I = 0x69

.field public static final WIFI_NATIVE_CMD_SET_ROAM_TRIGGER:I = 0x65

.field public static final WIFI_NATIVE_CMD_SET_SCAN_CHANNEL_TIME:I = 0x83

.field public static final WIFI_NATIVE_CMD_SET_SCAN_HOME_AWAY_TIME:I = 0x87

.field public static final WIFI_NATIVE_CMD_SET_SCAN_HOME_TIME:I = 0x85

.field public static final WIFI_NATIVE_CMD_SET_SCAN_NPROBES:I = 0x89

.field public static final WIFI_NATIVE_CMD_SET_STA:I = 0x4

.field public static final WIFI_NATIVE_CMD_SET_WES_MODE:I = 0xab

.field public static final WIFI_NATIVE_CMD_STOP_PERIODIC_SCAN:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addNetworkCommand()I
.end method

.method public static native addToBlacklistCommand(Ljava/lang/String;)Z
.end method

.method public static callSECApiBoolean(IZ)I
    .locals 6
    .parameter "commandId"
    .parameter "arg"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 540
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 593
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    .line 545
    :pswitch_2
    const-string v3, "AUTO_CONN_ON"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 546
    .local v0, result:Z
    if-eqz p1, :cond_1

    .line 547
    const-string v3, "AUTO_CONN_ATT_HOTSPOT_ON"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 551
    :goto_1
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 549
    :cond_1
    const-string v3, "AUTO_CONN_ATT_HOTSPOT_OFF"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 555
    .end local v0           #result:Z
    :pswitch_3
    const-string v3, "RESET_TIMER"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 557
    :pswitch_4
    const-string v3, "MODE_SET P2P"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 559
    :pswitch_5
    const-string v3, "MODE_SET STA"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 561
    :pswitch_6
    const-string v3, "DUMMY_EXIT p2p-wlan0-0"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 563
    :pswitch_7
    const-string v3, "DUMMY_EXIT wlan0"

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 565
    :pswitch_8
    const/4 v0, 0x0

    .line 571
    .restart local v0       #result:Z
    const-string/jumbo v1, "wifiNative"

    const-string v3, "This command is useful only for Wifi offload enabled devices"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 573
    goto :goto_0

    .line 575
    .end local v0           #result:Z
    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC_MANUAL_CONNECTION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_2

    const-string v3, "ON"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "OFF"

    goto :goto_2

    .line 578
    :pswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STOP_PERIODIC_SCAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_3

    const-string v3, "ON"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_3
    const-string v3, "OFF"

    goto :goto_3

    .line 581
    :pswitch_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_4

    const-string v3, "CHANGE_RL"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_4
    const-string v3, "RESTORE_RL"

    goto :goto_4

    .line 583
    :pswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USE_NETWORK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_5

    const-string v3, "ON"

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_5
    const-string v3, "OFF"

    goto :goto_5

    .line 586
    :pswitch_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTSPOT20_ENABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_6

    const-string v3, "ON"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_6
    const-string v3, "OFF"

    goto :goto_6

    .line 589
    :pswitch_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTSPOT20_ROAM_ENABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v5, :cond_7

    const-string v3, "ON"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_7
    const-string v3, "OFF"

    goto :goto_7

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static callSECApiInt(II)I
    .locals 5
    .parameter "commandId"
    .parameter "arg"

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 597
    sparse-switch p0, :sswitch_data_0

    move v1, v2

    .line 672
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 602
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P2P_GROUP_ADD freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 605
    :sswitch_2
    if-lt p1, v2, :cond_1

    const/16 v3, 0x20

    if-gt p1, v3, :cond_1

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER AMPDU_MPDU "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 607
    goto :goto_0

    .line 612
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETROAMTRIGGER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 613
    .local v0, booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 618
    .end local v0           #booleanResult:Z
    :sswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETROAMDELTA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 619
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 624
    .end local v0           #booleanResult:Z
    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETROAMSCANPERIOD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 625
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 630
    .end local v0           #booleanResult:Z
    :sswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETROAMSCANCONTROL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 631
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 636
    .end local v0           #booleanResult:Z
    :sswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETSCANCHANNELTIME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 637
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 642
    .end local v0           #booleanResult:Z
    :sswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETSCANHOMETIME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 643
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 648
    .end local v0           #booleanResult:Z
    :sswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETSCANHOMEAWAYTIME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 649
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 654
    .end local v0           #booleanResult:Z
    :sswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETSCANNPROBES "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 655
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 660
    .end local v0           #booleanResult:Z
    :sswitch_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETWESMODE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 661
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 666
    .end local v0           #booleanResult:Z
    :sswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETOKCMODE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 667
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0xa -> :sswitch_2
        0x65 -> :sswitch_3
        0x67 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6b -> :sswitch_6
        0x83 -> :sswitch_7
        0x85 -> :sswitch_8
        0x87 -> :sswitch_9
        0x89 -> :sswitch_a
        0xab -> :sswitch_b
        0xad -> :sswitch_c
    .end sparse-switch
.end method

.method public static callSECApiString(ILjava/lang/String;)I
    .locals 5
    .parameter "commandId"
    .parameter "arg"

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 676
    sparse-switch p0, :sswitch_data_0

    move v1, v2

    .line 707
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 683
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETROAMSCANCHANNELS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 684
    .local v0, booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 689
    .end local v0           #booleanResult:Z
    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SENDACTIONFRAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 690
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 695
    .end local v0           #booleanResult:Z
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER REASSOC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 696
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 701
    .end local v0           #booleanResult:Z
    :sswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER SETCOUNTRYREV "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 702
    .restart local v0       #booleanResult:Z
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6d -> :sswitch_1
        0x96 -> :sswitch_3
        0x97 -> :sswitch_2
        0xa1 -> :sswitch_4
    .end sparse-switch
.end method

.method public static callSECApiVoid(I)I
    .locals 9
    .parameter "commandId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 711
    const-string v4, "WifiNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECApiVoid - ID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    sparse-switch p0, :sswitch_data_0

    move v2, v3

    .line 820
    :goto_0
    :sswitch_0
    return v2

    .line 720
    :sswitch_1
    const-string v4, "DRIVER GETROAMTRIGGER"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_0

    aget-object v2, v1, v2

    const-string v4, "GETROAMTRIGGER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 725
    goto :goto_0

    .line 730
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_2
    const-string v4, "DRIVER GETROAMDELTA"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 732
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_1

    aget-object v2, v1, v2

    const-string v4, "GETROAMDELTA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 735
    goto :goto_0

    .line 740
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_3
    const-string v4, "DRIVER GETROAMSCANPERIOD"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 742
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_2

    aget-object v2, v1, v2

    const-string v4, "GETROAMSCANPERIOD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 745
    goto :goto_0

    .line 750
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_4
    const-string v4, "DRIVER GETROAMSCANCONTROL"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 752
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_3

    aget-object v2, v1, v2

    const-string v4, "GETROAMSCANCONTROL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 755
    goto/16 :goto_0

    .line 760
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_5
    const-string v4, "DRIVER GETSCANCHANNELTIME"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 762
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_4

    aget-object v2, v1, v2

    const-string v4, "GETSCANCHANNELTIME"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 763
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 765
    goto/16 :goto_0

    .line 770
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_6
    const-string v4, "DRIVER GETSCANHOMETIME"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 772
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_5

    aget-object v2, v1, v2

    const-string v4, "GETSCANHOMETIME"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 773
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 775
    goto/16 :goto_0

    .line 780
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_7
    const-string v4, "DRIVER GETSCANHOMEAWAYTIME"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 782
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_6

    aget-object v2, v1, v2

    const-string v4, "GETSCANHOMEAWAYTIME"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 783
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 785
    goto/16 :goto_0

    .line 790
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_8
    const-string v4, "DRIVER GETSCANNPROBES"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 792
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_7

    aget-object v2, v1, v2

    const-string v4, "GETSCANNPROBES"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 793
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 795
    goto/16 :goto_0

    .line 800
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_9
    const-string v4, "DRIVER GETWESMODE"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 802
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_8

    aget-object v2, v1, v2

    const-string v4, "GETWESMODE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 803
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 805
    goto/16 :goto_0

    .line 810
    .end local v0           #stringResult:Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :sswitch_a
    const-string v4, "DRIVER GETOKCMODE"

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .restart local v0       #stringResult:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 812
    .restart local v1       #tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v8, :cond_9

    aget-object v2, v1, v2

    const-string v4, "GETOKCMODE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 813
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 815
    goto/16 :goto_0

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0x66 -> :sswitch_2
        0x68 -> :sswitch_3
        0x6a -> :sswitch_4
        0x82 -> :sswitch_5
        0x84 -> :sswitch_6
        0x86 -> :sswitch_7
        0x88 -> :sswitch_8
        0xaa -> :sswitch_9
        0xac -> :sswitch_a
    .end sparse-switch
.end method

.method public static callSECStringApiVoid(I)Ljava/lang/String;
    .locals 8
    .parameter "commandId"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v6, 0x14

    const/16 v5, 0xe

    .line 824
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSECStringApiVoid - ID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sparse-switch p0, :sswitch_data_0

    .line 857
    :cond_0
    :goto_0
    return-object v1

    .line 828
    :sswitch_0
    const-string v1, ""

    goto :goto_0

    .line 833
    :sswitch_1
    const-string v2, "DRIVER GETROAMSCANCHANNELS"

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, stringResult:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GETROAMSCANCHANNELS "

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 836
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 845
    .end local v0           #stringResult:Ljava/lang/String;
    :sswitch_2
    const-string v2, "DRIVER GETCOUNTRYREV"

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .restart local v0       #stringResult:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GETCOUNTRYREV "

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 848
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 826
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6c -> :sswitch_1
        0xa0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static native cancelWpsCommand()Z
.end method

.method public static native clearBlacklistCommand()Z
.end method

.method public static native closeSupplicantConnection()V
.end method

.method public static native closeSupplicantConnection_p2p()V
.end method

.method public static native connectToSupplicant()Z
.end method

.method public static native connectToSupplicant_p2p()Z
.end method

.method public static native disableNetworkCommand(I)Z
.end method

.method public static native disconnectCommand()Z
.end method

.method private static native doBooleanCommand(Ljava/lang/String;)Z
.end method

.method private static native doIntCommand(Ljava/lang/String;)I
.end method

.method private static native doStringCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native enableBackgroundScanCommand(Z)V
.end method

.method public static native enableNetworkCommand(IZ)Z
.end method

.method public static native getBandCommand()I
.end method

.method public static native getCountryRevCommand()Ljava/lang/String;
.end method

.method public static native getErrorString(I)Ljava/lang/String;
.end method

.method public static native getMacAddressCommand()Ljava/lang/String;
.end method

.method public static native getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static native getPowerModeCommand()I
.end method

.method public static native getRoamBandCommand()I
.end method

.method public static native getRoamDeltaCommand()I
.end method

.method public static native getRoamScanPeriodCommand()I
.end method

.method public static native getRoamTriggerCommand()I
.end method

.method public static native isDriverLoaded()Z
.end method

.method public static native killSupplicant()Z
.end method

.method public static native listNetworksCommand()Ljava/lang/String;
.end method

.method public static native loadDriver()Z
.end method

.method public static p2pCancelConnect()Z
    .locals 1

    .prologue
    .line 363
    const-string v0, "P2P_CANCEL"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 8
    .parameter "config"
    .parameter "joinExistingGroup"

    .prologue
    .line 315
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 359
    :goto_0
    return-object v6

    .line 316
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v0, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 318
    .local v5, wps:Landroid/net/wifi/WpsInfo;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 348
    :goto_1
    if-eqz p1, :cond_1

    const-string/jumbo v6, "join"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 351
    .local v2, groupOwnerIntent:I
    if-ltz v2, :cond_2

    const/16 v6, 0xf

    if-le v2, v6, :cond_3

    .line 352
    :cond_2
    const/4 v2, 0x3

    .line 354
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go_intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v1, "P2P_CONNECT "

    .line 357
    .local v1, command:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 322
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #groupOwnerIntent:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v6, "pbc"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    :pswitch_1
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 326
    const-string/jumbo v6, "pin"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_3
    const-string v6, "display"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    :cond_4
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 333
    :pswitch_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string/jumbo v6, "keypad"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    :pswitch_3
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v6, "label"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 359
    .restart local v1       #command:Ljava/lang/String;
    .restart local v2       #groupOwnerIntent:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static p2pCustomCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"

    .prologue
    .line 472
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p2pFind()Z
    .locals 1

    .prologue
    .line 270
    const-string v0, "P2P_FIND"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pFind(I)Z
    .locals 2
    .parameter "timeout"

    .prologue
    .line 274
    if-gtz p0, :cond_0

    .line 275
    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pFlush()Z
    .locals 1

    .prologue
    .line 305
    const-string v0, "P2P_FLUSH"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pFlushFind(I)Z
    .locals 2
    .parameter "timeout"

    .prologue
    .line 281
    const-string v0, "P2P_FLUSH"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 283
    if-gtz p0, :cond_0

    .line 284
    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pGetDeviceAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 438
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, status:Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v7, ""

    .line 449
    :goto_0
    return-object v7

    .line 441
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 443
    .local v5, token:Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 444
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, nameValue:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 449
    .end local v3           #nameValue:[Ljava/lang/String;
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    const-string v7, ""

    goto :goto_0

    .line 446
    .restart local v3       #nameValue:[Ljava/lang/String;
    .restart local v5       #token:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 442
    .end local v3           #nameValue:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static p2pGetDeviceAddress_concurrent()Ljava/lang/String;
    .locals 9

    .prologue
    .line 453
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand_p2p()Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, status:Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v7, ""

    .line 464
    :goto_0
    return-object v7

    .line 456
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 458
    .local v5, token:Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 459
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, nameValue:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 464
    .end local v3           #nameValue:[Ljava/lang/String;
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    const-string v7, ""

    goto :goto_0

    .line 461
    .restart local v3       #nameValue:[Ljava/lang/String;
    .restart local v5       #token:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 457
    .end local v3           #nameValue:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static p2pGetInterfaceAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "deviceAddress"

    .prologue
    const/4 v7, 0x0

    .line 418
    if-nez p0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-object v7

    .line 422
    :cond_1
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, peerInfo:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 424
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 428
    .local v5, token:Ljava/lang/String;
    const-string v8, "intended_addr="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 429
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, nameValue:[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 431
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 426
    .end local v3           #nameValue:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static p2pGroupAdd()Z
    .locals 1

    .prologue
    .line 385
    const-string v0, "P2P_GROUP_ADD"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pGroupRemove(Ljava/lang/String;)Z
    .locals 2
    .parameter "iface"

    .prologue
    .line 389
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_GROUP_REMOVE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 2
    .parameter "group"
    .parameter "deviceAddress"

    .prologue
    .line 399
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    .line 401
    :cond_0
    if-nez p0, :cond_1

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 404
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " go_dev_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pListen()Z
    .locals 1

    .prologue
    .line 294
    const-string v0, "P2P_LISTEN"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pListen(I)Z
    .locals 2
    .parameter "timeout"

    .prologue
    .line 298
    if-gtz p0, :cond_0

    .line 299
    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pListen()Z

    move-result v0

    .line 301
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_LISTEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PEER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 367
    if-nez p0, :cond_0

    .line 381
    :goto_0
    return v0

    .line 369
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v1, v1, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 371
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pbc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 374
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keypad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 377
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static p2pReinvoke(ILjava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "deviceAddress"

    .prologue
    .line 411
    if-eqz p1, :cond_0

    if-gez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pReject(Ljava/lang/String;)Z
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_REJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pStopFind()Z
    .locals 1

    .prologue
    .line 290
    const-string v0, "P2P_STOP_FIND"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native pingCommand()Z
.end method

.method public static native reassociateCommand()Z
.end method

.method public static native reconnectCommand()Z
.end method

.method public static native reloadConfigCommand()Z
.end method

.method public static native removeNetworkCommand(I)Z
.end method

.method public static native saveConfigCommand()Z
.end method

.method public static native scanCommand(Z)Z
.end method

.method public static native scanResultsCommand()Ljava/lang/String;
.end method

.method public static native setBandCommand(I)Z
.end method

.method public static native setBluetoothCoexistenceModeCommand(I)Z
.end method

.method public static native setBluetoothCoexistenceScanModeCommand(Z)Z
.end method

.method public static setConfigMethods(Ljava/lang/String;)Z
    .locals 2
    .parameter "cfg"

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET config_methods "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native setCountryCodeCommand(Ljava/lang/String;)Z
.end method

.method public static native setCountryRevCommand(Ljava/lang/String;)Z
.end method

.method public static setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setDeviceType(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native setFwType(I)Z
.end method

.method public static native setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static setPersistentReconnect(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    .line 253
    if-ne p0, v0, :cond_0

    .line 254
    .local v0, value:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET persistent_reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 253
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native setPowerModeCommand(I)Z
.end method

.method public static native setRoamBandCommand(I)Z
.end method

.method public static native setRoamDeltaCommand(I)Z
.end method

.method public static native setRoamScanPeriodCommand(I)Z
.end method

.method public static native setRoamTriggerCommand(I)Z
.end method

.method public static native setScanIntervalCommand(I)V
.end method

.method public static native setScanModeCommand(Z)Z
.end method

.method public static native setScanResultHandlingCommand(I)Z
.end method

.method public static native setSuspendOptimizationsCommand(Z)Z
.end method

.method public static setWfdParam(Ljava/lang/String;)Z
    .locals 2
    .parameter "command"

    .prologue
    .line 482
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFD_SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setWfdParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 476
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 478
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFD_SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static signalPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, "SIGNAL_POLL"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native startDriverCommand()Z
.end method

.method public static native startFilteringMulticastV4Packets()Z
.end method

.method public static native startFilteringMulticastV6Packets()Z
.end method

.method public static native startP2pSupplicant()Z
.end method

.method public static native startSupplicant()Z
.end method

.method public static native startWpsPbcCommand(Ljava/lang/String;)Z
.end method

.method public static native startWpsWithPinFromAccessPointCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native startWpsWithPinFromDeviceCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native statusCommand()Ljava/lang/String;
.end method

.method public static native statusCommand_p2p()Ljava/lang/String;
.end method

.method public static native stopDriverCommand()Z
.end method

.method public static native stopFilteringMulticastV4Packets()Z
.end method

.method public static native stopFilteringMulticastV6Packets()Z
.end method

.method public static native stopSupplicant()Z
.end method

.method public static native unloadDriver()Z
.end method

.method public static native waitForEvent()Ljava/lang/String;
.end method

.method public static native waitForEvent_p2p()Ljava/lang/String;
.end method

.method public static wpsPbc()Z
    .locals 1

    .prologue
    .line 245
    const-string v0, "WPS_PBC"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static wpsPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
