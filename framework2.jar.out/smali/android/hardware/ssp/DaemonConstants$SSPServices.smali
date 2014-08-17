.class public final enum Landroid/hardware/ssp/DaemonConstants$SSPServices;
.super Ljava/lang/Enum;
.source "DaemonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SSPServices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum BLE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum GENERAL:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum MOTION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum RAW_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPServices;

.field public static final enum ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;


# instance fields
.field protected final service:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 77
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GENERAL:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 80
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v4, v5}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 83
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v5, v6}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 86
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "CARRYING"

    invoke-direct {v0, v1, v6, v7}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 89
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "PEDOMETER"

    invoke-direct {v0, v1, v7, v8}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 94
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "RAW_SENSOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->RAW_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 97
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "ZONE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 100
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "DANGER_ZONE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 103
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "MOTION"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 106
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "GESTURE"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 109
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 112
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const-string v1, "BLE"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPServices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 74
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GENERAL:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v2, v0, v1

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPServices;->CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPServices;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPServices;->RAW_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPServices;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->service:I

    .line 125
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/ssp/DaemonConstants$SSPServices;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    return-object v0
.end method

.method public static values()[Landroid/hardware/ssp/DaemonConstants$SSPServices;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-virtual {v0}, [Landroid/hardware/ssp/DaemonConstants$SSPServices;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->ordinal()I

    move-result v0

    return v0
.end method
