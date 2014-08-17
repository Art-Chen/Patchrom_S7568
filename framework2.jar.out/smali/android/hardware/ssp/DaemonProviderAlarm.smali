.class Landroid/hardware/ssp/DaemonProviderAlarm;
.super Ljava/lang/Object;
.source "DaemonProviderAlarm.java"


# static fields
.field private static instance:Landroid/hardware/ssp/DaemonProviderAlarm;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonProviderAlarm;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Landroid/hardware/ssp/DaemonProviderAlarm;->instance:Landroid/hardware/ssp/DaemonProviderAlarm;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Landroid/hardware/ssp/DaemonProviderAlarm;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonProviderAlarm;->instance:Landroid/hardware/ssp/DaemonProviderAlarm;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/hardware/ssp/DaemonProviderAlarm;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonProviderAlarm;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonProviderAlarm;->instance:Landroid/hardware/ssp/DaemonProviderAlarm;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonProviderAlarm;->instance:Landroid/hardware/ssp/DaemonProviderAlarm;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected initializeProvider()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonProviderAlarm;->mVibrator:Landroid/os/Vibrator;

    .line 52
    return-void
.end method

.method protected vibrateAlarm(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string v0, "vibrate alarm"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Landroid/hardware/ssp/DaemonProviderAlarm;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateNotification(I)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "vibrate Cancel"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroid/hardware/ssp/DaemonProviderAlarm;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
