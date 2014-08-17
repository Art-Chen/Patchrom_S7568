.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$Log;,
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field private static mKeyguardShowing:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootResult:Z

.field private static pd:Landroid/app/ShutdownDialog;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsSamsungAnimation:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 2

    .prologue
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static IsShutDownStarted()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "ShutdownThread"

    const-string v2, "shut down already running , return true"

    invoke-static {v0, v2}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    return v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method private static beginShutdownSamsungSequence(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    const-string v4, "ShutdownThread"

    const-string v6, "!@Request to shutdown already running, returning."

    invoke-static {v4, v6}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    invoke-static {}, Lcom/android/internal/app/ShutdownThread$Log;->startState()V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v4, "shutdown"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "POWER_OFF_ANIMATION_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, startAnimation:Landroid/content/Intent;
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v4, Landroid/app/ShutdownDialog;

    invoke-direct {v4, p0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4, v6}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7e5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setWindowAnimations(I)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    .local v2, mp:Landroid/media/MediaPlayer;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0, v2}, Lcom/android/internal/app/ShutdownThreadFeature;->SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V

    :goto_1
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    invoke-virtual {v4}, Landroid/app/ShutdownDialog;->show()V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v8, v4, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_1
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "ShutdownThread-cpu"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v8, v4, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_2
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v6, 0x1a

    const-string v7, "ShutdownThread-screen"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_3
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v5, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v5}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    iput-object v5, v4, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #mp:Landroid/media/MediaPlayer;
    .end local v3           #startAnimation:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #mp:Landroid/media/MediaPlayer;
    .restart local v3       #startAnimation:Landroid/content/Intent;
    :cond_2
    const-string v4, "ShutdownThread"

    const-string v5, "no media player"

    invoke-static {v4, v5}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v8, v4, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v8, v4, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    const-string v3, "ShutdownThread"

    const-string v5, "!@Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    invoke-static {}, Lcom/android/internal/app/ShutdownThread$Log;->startState()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v3, "shutdown"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    .local v2, pd:Landroid/app/ProgressDialog;
    const v3, 0x104016f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x1040173

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_1
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v4, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$5;-><init>()V

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "!@No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "!@No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "ShutdownThread"

    const-string v2, "!@reboot : shut down already running."

    invoke-static {v0, v2}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    if-eqz p0, :cond_0

    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThreadFeature$Led;->Off()V

    const-string v2, "ShutdownThread"

    const-string v3, "!@Performing low-level shutdown..."

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Power;->shutdown()V

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1
.end method

.method public static setKeyguardShowing(Z)V
    .locals 0
    .parameter "isKeyguardShowing"

    .prologue
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mKeyguardShowing:Z

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_0

    const-string v7, "ShutdownThread"

    const-string v9, "!@Request to shutdown already running, returning."

    invoke-static {v7, v9}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v9, "GlobalActions restart"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v6

    .local v6, rp:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v6, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ShutdownThread"

    const-string v9, "!@Shutdown Disabled by Administrator"

    invoke-static {v7, v9}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v8

    goto :goto_0

    .end local v6           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :catch_0
    move-exception v7

    :cond_2
    const/4 v7, 0x1

    :try_start_3
    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .local v4, longPressBehavior:I
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_4

    if-ne v4, v11, :cond_3

    const v5, 0x1040177

    .local v5, resourceId:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v8, 0x258

    if-lt v7, v8, :cond_6

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v8, 0x103012b

    invoke-direct {v7, p0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    :goto_2
    new-instance v2, Ljava/io/File;

    const-string v7, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    const-string v7, "ShutdownThread"

    const-string v8, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v7, v8}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .local v0, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1010355

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_7

    const v7, 0x104017d

    :goto_3
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    new-instance v9, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v9}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v9}, Lcom/android/internal/app/ShutdownThread$1;-><init>()V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .local v3, kgm:Landroid/app/KeyguardManager;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    :goto_4
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #kgm:Landroid/app/KeyguardManager;
    .end local v5           #resourceId:I
    :cond_3
    const v5, 0x1040175

    goto/16 :goto_1

    :cond_4
    if-ne v4, v11, :cond_5

    const v5, 0x1040176

    goto/16 :goto_1

    :cond_5
    const v5, 0x1040174

    goto/16 :goto_1

    .restart local v5       #resourceId:I
    :cond_6
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v8, 0x1030128

    invoke-direct {v7, p0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    goto/16 :goto_2

    .restart local v0       #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .restart local v2       #f:Ljava/io/File;
    :cond_7
    const v7, 0x104016f

    goto :goto_3

    .restart local v1       #dialog:Landroid/app/AlertDialog;
    .restart local v3       #kgm:Landroid/app/KeyguardManager;
    :cond_8
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_4

    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #kgm:Landroid/app/KeyguardManager;
    :cond_9
    const-string v7, "ShutdownThread"

    const-string v8, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v7, v8}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method actionDoneMount()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneMount:Z

    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 22

    .prologue
    new-instance v21, Lcom/android/internal/app/ShutdownThreadFeature;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/android/internal/app/ShutdownThreadFeature;-><init>(Landroid/content/Context;)V

    .local v21, shutdownFeature:Lcom/android/internal/app/ShutdownThreadFeature;
    invoke-static {}, Lcom/android/internal/app/ShutdownThreadFeature$Led;->On()V

    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v18

    .local v18, mount:Landroid/os/storage/IMountService;
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .local v10, am:Landroid/app/IActivityManager;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ShutdownThreadFeature;->shutdownProperties()V

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ShutdownThreadFeature;->radioShutdown()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ShutdownDialog;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_0
    new-instance v5, Lcom/android/internal/app/ShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$6;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    if-eqz v2, :cond_4

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .local v20, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ShutdownThread"

    const-string v3, "!@Sending shutdown broadcast..."

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v16, v2, v6

    .local v16, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v16, v6

    .local v11, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_6

    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown broadcast timed out"

    invoke-static {v2, v4}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down activity manager..."

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_2

    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_3
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ShutdownThreadFeature;->waitRadioShutdown(Z)V

    new-instance v19, Lcom/android/internal/app/ShutdownThread$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$7;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .local v19, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down MountService"

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    add-long v14, v2, v6

    .local v14, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v18, :cond_7

    :try_start_2
    invoke-interface/range {v18 .. v19}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v14, v6

    .restart local v11       #delay:J
    const-string v2, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@MountService delay : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", systemTime : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_8

    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown wait timed out"

    invoke-static {v2, v4}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11           #delay:J
    :cond_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    return-void

    .end local v14           #endShutTime:J
    .end local v16           #endTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v20           #reason:Ljava/lang/String;
    :cond_4
    const-string v2, "0"

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    goto/16 :goto_1

    .restart local v11       #delay:J
    .restart local v16       #endTime:J
    .restart local v20       #reason:Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_2

    .end local v11           #delay:J
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .restart local v14       #endShutTime:J
    .restart local v19       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_7
    :try_start_6
    const-string v2, "ShutdownThread"

    const-string v4, "!@MountService unavailable for shutdown"

    invoke-static {v2, v4}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v13

    .local v13, e:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "ShutdownThread"

    const-string v4, "!@Exception during MountService shutdown"

    invoke-static {v2, v4, v13}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_4

    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .restart local v11       #delay:J
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    :catch_2
    move-exception v13

    .local v13, e:Ljava/lang/InterruptedException;
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v4, "!@MountService InterruptedException"

    invoke-static {v2, v4}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .end local v11           #delay:J
    .end local v13           #e:Ljava/lang/InterruptedException;
    .end local v14           #endShutTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_3
    move-exception v2

    goto/16 :goto_3
.end method

.method private static getResourceId(I)I
    .locals 1
    .parameter "id"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x60c

    .end local p0
    :cond_0
    return p0
.end method

.method private static getTitleResourceId()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const v0, 0x60c018c

    :goto_0
    return v0

    :cond_0
    const v0, 0x60c0191

    goto :goto_0
.end method

.method private static createShutDownDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    new-instance v2, Landroid/app/Dialog;

    const v6, 0x10300f1

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .local v2, bootMsgDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x603002e

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    const v6, 0x60b0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, msgText:Landroid/widget/TextView;
    const v6, 0x60b0022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, animationView:Landroid/widget/ImageView;
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_0

    const v6, 0x60c0001

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x6020034

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v6, 0x60c01aa

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
