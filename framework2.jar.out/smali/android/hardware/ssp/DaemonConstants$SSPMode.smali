.class public abstract enum Landroid/hardware/ssp/DaemonConstants$SSPMode;
.super Ljava/lang/Enum;
.source "DaemonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "SSPMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/ssp/DaemonConstants$SSPMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPMode;

.field public static final enum AP_SLEEP:Landroid/hardware/ssp/DaemonConstants$SSPMode;

.field public static final enum NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

.field public static final enum REPLAY_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPMode$1;

    const-string v1, "NOMAL_MODE"

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    .line 39
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPMode$2;

    const-string v1, "REPLAY_MODE"

    invoke-direct {v0, v1, v3}, Landroid/hardware/ssp/DaemonConstants$SSPMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->REPLAY_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    .line 47
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPMode$3;

    const-string v1, "AP_SLEEP"

    invoke-direct {v0, v1, v4}, Landroid/hardware/ssp/DaemonConstants$SSPMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->AP_SLEEP:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/ssp/DaemonConstants$SSPMode;

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPMode;->NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPMode;->REPLAY_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPMode;->AP_SLEEP:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/hardware/ssp/DaemonConstants$SSPMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/ssp/DaemonConstants$SSPMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;

    return-object v0
.end method

.method public static values()[Landroid/hardware/ssp/DaemonConstants$SSPMode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPMode;

    invoke-virtual {v0}, [Landroid/hardware/ssp/DaemonConstants$SSPMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/ssp/DaemonConstants$SSPMode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonConstants$SSPMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public abstract getMode()Ljava/lang/String;
.end method
