.class enum Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
.super Ljava/lang/Enum;
.source "DaemonManagerDataRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonManagerDataRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "SSPSensorSamplingRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CARRYING_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_BLE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_GESTURE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_MOTION_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_PDR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_PEDOMETER_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum CONTEXT_ZONE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum LOCATION_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum MOVING_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum RAW_GESTURE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

.field public static final enum RAW_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;


# instance fields
.field private name:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "LOCATION_SENSOR_RATE"

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->LOCATION_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 65
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "MOVING_SENSOR_RATE"

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->MOVING_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 68
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate$1;

    const-string v1, "CARRYING_SENSOR_RATE"

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate$1;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CARRYING_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 76
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "CONTEXT_RATE"

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 79
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate$2;

    const-string v1, "CONTEXT_PEDOMETER_RATE"

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate$2;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_PEDOMETER_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 87
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "CONTEXT_PDR_RATE"

    const/4 v2, 0x5

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PDR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_PDR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 90
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "CONTEXT_ZONE"

    const/4 v2, 0x6

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_ZONE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 93
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "CONTEXT_DANGER_ZONE"

    const/4 v2, 0x7

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->DANGERZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 96
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "CONTEXT_MOTION_RATE"

    const/16 v2, 0x8

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_MOTION_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 99
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "CONTEXT_GESTURE_RATE"

    const/16 v2, 0x9

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_GESTURE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 102
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "CONTEXT_BLE_RATE"

    const/16 v2, 0xa

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_BLE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 104
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    const-string v1, "RAW_GESTURE_RATE"

    const/16 v2, 0xb

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWGESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->RAW_GESTURE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 107
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate$3;

    const-string v1, "RAW_SENSOR_RATE"

    const/16 v2, 0xc

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWSENSOR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate$3;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->RAW_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    .line 59
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    sget-object v1, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->LOCATION_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->MOVING_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CARRYING_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_PEDOMETER_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_PDR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_ZONE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_MOTION_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_GESTURE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->CONTEXT_BLE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->RAW_GESTURE_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->RAW_SENSOR_RATE:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->$VALUES:[Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/ssp/DaemonConstants$SSPAggregators;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-object p3, p0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->name:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/DaemonManagerDataRate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    return-object v0
.end method

.method public static values()[Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->$VALUES:[Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    invoke-virtual {v0}, [Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    return-object v0
.end method


# virtual methods
.method protected getName()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->name:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    return-object v0
.end method

.method protected getSamplingRate()I
    .locals 1

    .prologue
    .line 133
    const v0, 0xf4240

    return v0
.end method
