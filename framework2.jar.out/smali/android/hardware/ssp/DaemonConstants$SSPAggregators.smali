.class public final enum Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
.super Ljava/lang/Enum;
.source "DaemonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SSPAggregators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/ssp/DaemonConstants$SSPAggregators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum BLE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum DANGERZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum MOTION:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum MOVING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum PDR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum RAWGESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum RAWSENSOR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum TMP_REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field public static final enum ZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "CARRYING"

    invoke-direct {v0, v1, v3}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 146
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "DANGERZONE"

    invoke-direct {v0, v1, v4}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->DANGERZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 149
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "CONTEXT"

    invoke-direct {v0, v1, v5}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 152
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "GESTURE"

    invoke-direct {v0, v1, v6}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 155
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "LPHP"

    invoke-direct {v0, v1, v7}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 158
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "MOTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 161
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "MOVING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 164
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "NOTIFICATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 167
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "PDR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PDR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 170
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "PEDOMETER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 173
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "RAWSENSOR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWSENSOR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 176
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "RAWGESTURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWGESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 179
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "ZONE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 182
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "BLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 184
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    const-string v1, "TMP_REPLAY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->TMP_REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 140
    const/16 v0, 0xf

    new-array v0, v0, [Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->DANGERZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PDR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWSENSOR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWGESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->TMP_REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

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
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    .locals 1
    .parameter "name"

    .prologue
    .line 140
    const-class v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    return-object v0
.end method

.method public static values()[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v0}, [Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ordinal()I

    move-result v0

    return v0
.end method
