.class public final enum Landroid/hardware/ssp/DaemonConstants$SSPRunners;
.super Ljava/lang/Enum;
.source "DaemonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SSPRunners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/ssp/DaemonConstants$SSPRunners;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_BLE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_MOTION:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_PDR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_RAW_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum CONTEXT_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum GESTURE_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum GPS:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

.field public static final enum SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v3}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GPS:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 205
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "SENSOR"

    invoke-direct {v0, v1, v4}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 208
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "GESTURE_SENSOR"

    invoke-direct {v0, v1, v5}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GESTURE_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 211
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "REPLAY"

    invoke-direct {v0, v1, v6}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 214
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT"

    invoke-direct {v0, v1, v7}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 217
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_PDR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PDR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 220
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_PEDOMETER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 223
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_ZONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 226
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_DANGER_ZONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 229
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_MOTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_MOTION:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 232
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_GESTURE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 235
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_BLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_BLE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 238
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    const-string v1, "CONTEXT_RAW_GESTURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_RAW_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    .line 199
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GPS:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GESTURE_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PDR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_MOTION:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_BLE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_RAW_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPRunners;

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
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/ssp/DaemonConstants$SSPRunners;
    .locals 1
    .parameter "name"

    .prologue
    .line 199
    const-class v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    return-object v0
.end method

.method public static values()[Landroid/hardware/ssp/DaemonConstants$SSPRunners;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, [Landroid/hardware/ssp/DaemonConstants$SSPRunners;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->ordinal()I

    move-result v0

    return v0
.end method
