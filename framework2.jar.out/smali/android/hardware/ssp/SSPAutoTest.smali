.class Landroid/hardware/ssp/SSPAutoTest;
.super Ljava/lang/Object;
.source "SSPAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;
    }
.end annotation


# static fields
.field protected static final SSP_ALL_TEST:I = 0x2

.field protected static final SSP_MANAGER_TEST:I = 0x1


# instance fields
.field private isTesting:Z

.field private mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

.field private mTestMode:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/ssp/SSPAutoTest;->isTesting:Z

    .line 44
    new-instance v0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;-><init>(Landroid/hardware/ssp/SSPAutoTest;)V

    iput-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/ssp/SSPAutoTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I

    return v0
.end method


# virtual methods
.method protected isRun()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/hardware/ssp/SSPAutoTest;->isTesting:Z

    return v0
.end method

.method protected setPacketList([BI)V
    .locals 1
    .parameter "packet"
    .parameter "delayTime"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;-><init>(Landroid/hardware/ssp/SSPAutoTest;)V

    iput-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->setPacketList([BI)V

    .line 99
    return-void
.end method

.method protected startAutoTest(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/hardware/ssp/SSPAutoTest;->isTesting:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "Auto Test is already started."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    iput p1, p0, Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/ssp/SSPAutoTest;->isTesting:Z

    .line 61
    iget-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->start()V

    goto :goto_0
.end method

.method protected stopAutoTest()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Landroid/hardware/ssp/SSPAutoTest;->isTesting:Z

    .line 69
    iput v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I

    .line 71
    iget-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->stopThread()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/SSPAutoTest;->mScenario:Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;

    .line 75
    :cond_0
    return-void
.end method
