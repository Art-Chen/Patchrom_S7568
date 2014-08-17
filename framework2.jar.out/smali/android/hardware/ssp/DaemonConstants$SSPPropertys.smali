.class public final enum Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
.super Ljava/lang/Enum;
.source "DaemonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SSPPropertys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum DANGERZONE_CATEGORY:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum LOCATION_ACCURACY:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum MOTION_TYPE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum PEDOMETER_HEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum PEDOMETER_WEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum ZONE_HOME_LATITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum ZONE_HOME_LONGITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum ZONE_OFFICE_LATITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum ZONE_OFFICE_LONGITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

.field public static final enum ZONE_RANGE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;


# instance fields
.field private final property:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 256
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "LOCATION_ACCURACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->LOCATION_ACCURACY:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 259
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "PEDOMETER_WEIGHT"

    invoke-direct {v0, v1, v4, v5}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->PEDOMETER_WEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 262
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "PEDOMETER_HEIGHT"

    invoke-direct {v0, v1, v5, v6}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->PEDOMETER_HEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 265
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "ZONE_HOME_LATITUDE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_HOME_LATITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 268
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "ZONE_HOME_LONGITUDE"

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_HOME_LONGITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 271
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "ZONE_OFFICE_LATITUDE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_OFFICE_LATITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 274
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "ZONE_OFFICE_LONGITUDE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_OFFICE_LONGITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 277
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "ZONE_RANGE"

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_RANGE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 280
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "DANGERZONE_CATEGORY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v7}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->DANGERZONE_CATEGORY:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 283
    new-instance v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const-string v1, "MOTION_TYPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v8}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->MOTION_TYPE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    .line 253
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->LOCATION_ACCURACY:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v2, v0, v1

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->PEDOMETER_WEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->PEDOMETER_HEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_HOME_LATITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_HOME_LONGITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v2, v0, v1

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_OFFICE_LATITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_OFFICE_LONGITUDE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ZONE_RANGE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->DANGERZONE_CATEGORY:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->MOTION_TYPE:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    iput p3, p0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->property:I

    .line 296
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->property:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    .locals 1
    .parameter "name"

    .prologue
    .line 253
    const-class v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    return-object v0
.end method

.method public static values()[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->$VALUES:[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    invoke-virtual {v0}, [Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->ordinal()I

    move-result v0

    return v0
.end method
