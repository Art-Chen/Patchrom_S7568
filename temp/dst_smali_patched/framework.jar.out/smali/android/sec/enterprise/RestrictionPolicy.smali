.class public Landroid/sec/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ActivityPicker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.bluetooth.DevicePickerActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.wfd.WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.bluetooth.BluetoothPairingDialog"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings.bluetooth.BluetoothEnableActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    aput-object v2, v0, v1

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBackupAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBackupAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isCameraEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isClipboardAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleCrashReportAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isGoogleCrashReportAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isMicrophoneEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNFCEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isNFCEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNonMarketAppAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isNonMarketAppAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPowerOffAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isPowerOffAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isSettingsChangesAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStatusBarExpansionAllowed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/sec/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isStatusBarExpansionAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isStatusBarExpansionAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isStatusBarExpansionAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method
