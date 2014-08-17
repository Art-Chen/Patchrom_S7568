.class public Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;
.super Ljava/lang/Object;
.source "DaemonContexts.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPRawSensorArray"
.end annotation


# instance fields
.field protected accelerometer:[[F

.field protected curSysTime:J

.field protected magnetic:[[F

.field protected orientation:[[F

.field protected samplingTime:[J

.field protected sysTime:[J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 328
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->curSysTime:J

    .line 329
    new-array v0, v2, [J

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->sysTime:[J

    .line 330
    new-array v0, v2, [J

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->samplingTime:[J

    .line 331
    const/4 v0, 0x3

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->accelerometer:[[F

    .line 332
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->orientation:[[F

    .line 333
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->magnetic:[[F

    .line 334
    return-void
.end method
