.class public Lcom/samsung/wfd/WfdManager;
.super Ljava/lang/Object;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdManager$Channel;,
        Lcom/samsung/wfd/WfdManager$ActionListener;,
        Lcom/samsung/wfd/WfdManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final ACTION_PICK_WFD_NETWORK:Ljava/lang/String; = "com.samsung.wfd.PICK_WFD_NETWORK"

.field public static final ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final DISABLE_WFD:I = 0x22068

.field public static final DISABLE_WFD_FAILED:I = 0x22069

.field public static final DISABLE_WFD_SUCCEEDED:I = 0x2206a

.field public static final ENABLE_WFD:I = 0x22065

.field public static final ENABLE_WFD_DIALOG:I = 0x2206f

.field public static final ENABLE_WFD_FAILED:I = 0x22066

.field public static final ENABLE_WFD_SUCCEEDED:I = 0x22067

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final EXTRA_CURRENT_RESOLUTION_INFO:Ljava/lang/String; = "curRes"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_RESOLUTION_INFO:Ljava/lang/String; = "resBitMask"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_SAMPLE_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_WFD_STATE:Ljava/lang/String; = "wfd_state"

.field public static final P2P_CONNECTION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

.field public static final P2P_CONNECTION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

.field public static final PAUSE_RTSP:I = 0x2206e

.field public static final POPUP_CAUSE_ALERT_RESTART:I = 0x22073

.field public static final POPUP_CAUSE_BLUETOOTH_OR_EARPHONE_ON:I = 0x2207c

.field public static final POPUP_CAUSE_CONNECTION_DISCONNECT:I = 0x2207b

.field public static final POPUP_CAUSE_DISCONNECT:I = 0x22071

.field public static final POPUP_CAUSE_DISCONNECT_NO_BUSY:I = 0x2207e

.field public static final POPUP_CAUSE_DONGLE_UPDATE:I = 0x22078

.field public static final POPUP_CAUSE_DONGLE_UPDATE_RESULT:I = 0x22079

.field public static final POPUP_CAUSE_HDMI_BUSY:I = 0x22074

.field public static final POPUP_CAUSE_HOTSPOT_BUSY:I = 0x22075

.field public static final POPUP_CAUSE_ONGOING_RESCAN:I = 0x22077

.field public static final POPUP_CAUSE_P2P_BUSY:I = 0x22072

.field public static final POPUP_CAUSE_SBEAM_BUSY:I = 0x22076

.field public static final POPUP_CAUSE_SPLIT_WINDOW:I = 0x2207f

.field public static final POPUP_CAUSE_TERMINATE:I = 0x22070

.field public static final POPUP_CAUSE_WEAK_NETWORK:I = 0x2207a

.field public static final RESUME_RTSP:I = 0x2206d

.field public static final START_RTSP:I = 0x2206b

.field public static final STOP_RTSP:I = 0x2206c

.field private static final TAG:Ljava/lang/String; = "WfdManager"

.field public static final WFD_SESSION_ENABLED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ENABLED"

.field public static final WFD_SESSION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

.field public static final WFD_SESSION_ESTABLISHING:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

.field public static final WFD_SESSION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_TERMINATED"

.field public static final WFD_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.wfd.STATE_CHANGED"

.field public static final WFD_STATE_DISABLED:I = 0x1

.field public static final WFD_STATE_ENABLED:I = 0x2

.field public static final WFD_STATE_P2P_CONNECTED:I = 0x3

.field public static final WFD_STATE_SESSION_ESTABLISHED:I = 0x4

.field public static final WFD_STATE_SESSION_STARTING:I = 0x9

.field public static final WFD_STATE_SESSION_TEARDOWNING:I = 0x0

.field public static final WFD_STATE_UNKNOWN:I = 0x5

.field public static final WFD_TEARDOWN_FOR_AUDIO_OUT:Ljava/lang/String; = "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

.field public static final WFD_UNSUPPORTED:I = 0x1

.field public static final WIFIDISPLAY_CONTROL_FROM_BROKER:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

.field public static final WIFIDISPLAY_CONTROL_FROM_SERVICE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

.field public static final WIFIDISPLAY_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

.field public static final WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

.field public static final WIFIDISPLAY_PARAM_CHANGED_NOTIFICATION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_REQ"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

.field public static final WIFIDISPLAY_SESSION_INFO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES"

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final WIFIDISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final WIFIDISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final WIFIDISPLAY_WEAK_NETWORK:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

.field public static final r_1024_768:I = 0x40

.field public static final r_1152_864:I = 0x80

.field public static final r_1280_1024:I = 0x1000

.field public static final r_1280_720:I = 0x8

.field public static final r_1280_768:I = 0x100

.field public static final r_1280_800:I = 0x200

.field public static final r_1360_768:I = 0x400

.field public static final r_1366_768:I = 0x800

.field public static final r_1400_1050:I = 0x2000

.field public static final r_1440_900:I = 0x4000

.field public static final r_1600_1200:I = 0x10000

.field public static final r_1600_900:I = 0x8000

.field public static final r_1680_1024:I = 0x20000

.field public static final r_1680_1050:I = 0x40000

.field public static final r_1920_1080:I = 0x10

.field public static final r_1920_1200:I = 0x80000

.field public static final r_640_360:I = 0x800000

.field public static final r_640_480:I = 0x1

.field public static final r_720_480:I = 0x2

.field public static final r_720_576:I = 0x4

.field public static final r_800_480:I = 0x100000

.field public static final r_800_600:I = 0x20

.field public static final r_848_480:I = 0x2000000

.field public static final r_854_480:I = 0x200000

.field public static final r_864_480:I = 0x400000

.field public static final r_960_540:I = 0x1000000

.field public static final r_unknown:I


# instance fields
.field mService:Lcom/samsung/wfd/IWfdManager;


# direct methods
.method public constructor <init>(Lcom/samsung/wfd/IWfdManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    .line 334
    return-void
.end method


# virtual methods
.method public WFDGetStatus()Z
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 562
    const/4 v0, 0x1

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public WFDGetSubtitleStatus()Z
    .locals 2

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->WFDGetSubtitleStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 571
    :goto_0
    return v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDGetSuspendStatus()Z
    .locals 2

    .prologue
    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->WFDGetSuspendStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 596
    :goto_0
    return v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 2
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdManager;->WFDPostSubtitle(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 588
    :goto_0
    return v1

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDPostSuspend(Ljava/lang/String;)Z
    .locals 2
    .parameter "subtitle"

    .prologue
    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->WFDPostSuspend(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 613
    :goto_0
    return v1

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 2
    .parameter "bStatus"

    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->WFDSetSubtitleStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 579
    :goto_0
    return v1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDSetSuspendStatus(Z)Z
    .locals 2
    .parameter "bStatus"

    .prologue
    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->WFDSetSuspendStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 604
    :goto_0
    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public enableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22065

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public getFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 4

    .prologue
    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, frame:Lcom/samsung/ScreenCapture/CaptureImg;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    .end local v1           #frame:Lcom/samsung/ScreenCapture/CaptureImg;
    :goto_0
    return-object v1

    .line 669
    .restart local v1       #frame:Lcom/samsung/ScreenCapture/CaptureImg;
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WfdManager"

    const-string v3, "getFrame Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 635
    :goto_0
    return-object v1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 2

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWfdSinkResolution()I
    .locals 2

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getWfdSinkResolution()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 555
    :goto_0
    return v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWfdState()I
    .locals 2

    .prologue
    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getWfdState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 547
    :goto_0
    return v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;
    .locals 5
    .parameter "srcContext"
    .parameter "srcLooper"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 444
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 451
    :cond_0
    :goto_0
    return-object v0

    .line 446
    :cond_1
    new-instance v0, Lcom/samsung/wfd/WfdManager$Channel;

    invoke-direct {v0, p2, p3}, Lcom/samsung/wfd/WfdManager$Channel;-><init>(Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)V

    .line 447
    .local v0, c:Lcom/samsung/wfd/WfdManager$Channel;
    iget-object v3, v0, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Lcom/samsung/wfd/WfdManager$Channel;->mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 451
    goto :goto_0
.end method

.method public pauseRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206e

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public resumeRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 486
    if-nez p1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWfdEnabled(I)Z
    .locals 2
    .parameter "option"

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 515
    :goto_0
    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabledDialog(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 507
    :goto_0
    return v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWfdRestart()Z
    .locals 2

    .prologue
    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->setWfdRestart()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 531
    :goto_0
    return v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWfdRestartOption(I)Z
    .locals 2
    .parameter "option"

    .prologue
    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdRestartOption(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 539
    :goto_0
    return v1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWfdTerminate()Z
    .locals 2

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->setWfdTerminate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 523
    :goto_0
    return v1

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startCapture(III)V
    .locals 2
    .parameter "frametype"
    .parameter "aWidth"
    .parameter "aHeight"

    .prologue
    .line 644
    const-string v0, "WfdManager"

    const-string/jumbo v1, "startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/wfd/IWfdManager;->startCapture(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206b

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public startWFDSession(Ljava/lang/Object;)V
    .locals 2
    .parameter "dummy"

    .prologue
    .line 619
    const-string v0, "WfdManager"

    const-string v1, "NOP startWFDSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method public stopCapture()V
    .locals 2

    .prologue
    .line 653
    const-string v0, "WfdManager"

    const-string/jumbo v1, "stopCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v0}, Lcom/samsung/wfd/IWfdManager;->stopCapture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method
