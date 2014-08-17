.class public Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$DVFSLock;,
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final ACTIVITY_WAKE_LOCK:I = 0x100

.field public static final DVFS_MAX_LIMIT:I = 0x2

.field public static final DVFS_MIN_LIMIT:I = 0x1

.field public static final FULL_WAKE_LOCK:I = 0x1a

.field private static final LOCK_MASK:I = 0x13f

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PERSISTENT_DVFSLOCK_SYSTEM_POWER_SAVING_MODE:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field private static final REGEX_PATTERN_EMAIL:Ljava/lang/String; = "[-a-zA-Z0-9][-a-zA-Z0-9._]+@[-a-zA-Z0-9_.]+[.][-a-zA-Z0-9]+"

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final WAIT_FOR_PROXIMITY_NEGATIVE:I = 0x1

.field private static final WAKE_BIT_ACTIVITY:I = 0x100

.field private static final WAKE_BIT_CPU_STRONG:I = 0x1

.field private static final WAKE_BIT_CPU_WEAK:I = 0x2

.field private static final WAKE_BIT_KEYBOARD_BRIGHT:I = 0x10

.field private static final WAKE_BIT_PROXIMITY_SCREEN_OFF:I = 0x20

.field private static final WAKE_BIT_SCREEN_BRIGHT:I = 0x8

.field private static final WAKE_BIT_SCREEN_DIM:I = 0x4


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/IPowerManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 616
    return-void
.end method

.method public constructor <init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 622
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 624
    iput-object p2, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 625
    return-void
.end method


# virtual methods
.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "frequency"
    .parameter "callingId"
    .parameter "tag"

    .prologue
    .line 748
    packed-switch p1, :pswitch_data_0

    .line 753
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 756
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v2

    .line 757
    .local v2, supportedFrequency:[I
    if-nez v2, :cond_0

    .line 758
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "PowerManager : DVFSLock : getSupportedFrequency : null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 761
    :cond_0
    const/4 v0, 0x0

    .line 762
    .local v0, bFound:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 763
    aget v3, v2, v1

    if-ne p2, v3, :cond_1

    .line 764
    const/4 v0, 0x1

    .line 762
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :cond_2
    if-nez v0, :cond_3

    .line 768
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid frequency"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 772
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IPowerManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_1
    return-void

    .line 773
    :catch_0
    move-exception v3

    goto :goto_1

    .line 748
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentBrightness(Z)F
    .locals 2
    .parameter "ratio"

    .prologue
    .line 484
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->getCurrentBrightness(Z)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 486
    :goto_0
    return v1

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Landroid/os/RemoteException;
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method public getPlugType()I
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 474
    .local v0, plugType:I
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getPlugType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 479
    :goto_0
    return v0

    .line 476
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSupportedFrequency()[I
    .locals 2

    .prologue
    .line 637
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getSupportedFrequency()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 639
    :goto_0
    return-object v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 556
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getSupportedWakeLockFlags()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 558
    :goto_0
    return v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public goToSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 576
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    :goto_0
    return v1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;
    .locals 2
    .parameter "type"
    .parameter "frequency"
    .parameter "tag"

    .prologue
    .line 741
    if-nez p3, :cond_0

    .line 742
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PowerManager : tag is null in PowerManager.newDVFSLock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    new-instance v0, Landroid/os/PowerManager$DVFSLock;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/os/PowerManager$DVFSLock;-><init>(Landroid/os/PowerManager;IILjava/lang/String;)V

    return-object v0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2
    .parameter "flags"
    .parameter "tag"

    .prologue
    .line 437
    if-nez p2, :cond_0

    .line 438
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag is null in PowerManager.newWakeLock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 609
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releasePersistentDVFSLock(I)V
    .locals 1
    .parameter "callingId"

    .prologue
    .line 779
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->releasePersistentDVFSLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutoBrightnessLimit(II)V
    .locals 1
    .parameter "lowerLimit"
    .parameter "upperLimit"

    .prologue
    .line 584
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRatioOfAutoBrightness(I)V
    .locals 1
    .parameter "ratioValue"

    .prologue
    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setRatioOfAutoBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSystemPowerSaveMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 630
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setSystemPowerSaveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSystemTimeoutOverride(I)V
    .locals 1
    .parameter "overrideTimeout"

    .prologue
    .line 592
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setSystemTimeoutOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 1
    .parameter "when"
    .parameter "noChangeLights"

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    goto :goto_0
.end method
