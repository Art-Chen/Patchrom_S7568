.class Landroid/hardware/ssp/SSPPropertyBundle;
.super Ljava/lang/Object;
.source "SSPPropertyBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    }
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPPropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static booleanVal:[Z

.field private static doubleVal:D

.field private static floatVal:F

.field private static integerVal:I

.field private static longVal:J

.field private static stringVal:Ljava/lang/String;

.field private static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Z

    sput-object v0, Landroid/hardware/ssp/SSPPropertyBundle;->booleanVal:[Z

    .line 323
    new-instance v0, Landroid/hardware/ssp/SSPPropertyBundle$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPropertyBundle$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPPropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, -0x1

    sput v0, Landroid/hardware/ssp/SSPPropertyBundle;->type:I

    .line 219
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 220
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 221
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 222
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 223
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 224
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPPropertyBundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 235
    return-void
.end method

.method static synthetic access$100()[Z
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle;->booleanVal:[Z

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 23
    sget v0, Landroid/hardware/ssp/SSPPropertyBundle;->integerVal:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Landroid/hardware/ssp/SSPPropertyBundle;->integerVal:I

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 23
    sget-wide v0, Landroid/hardware/ssp/SSPPropertyBundle;->longVal:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-wide p0, Landroid/hardware/ssp/SSPPropertyBundle;->longVal:J

    return-wide p0
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    .line 23
    sget v0, Landroid/hardware/ssp/SSPPropertyBundle;->floatVal:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Landroid/hardware/ssp/SSPPropertyBundle;->floatVal:F

    return p0
.end method

.method static synthetic access$500()D
    .locals 2

    .prologue
    .line 23
    sget-wide v0, Landroid/hardware/ssp/SSPPropertyBundle;->doubleVal:D

    return-wide v0
.end method

.method static synthetic access$502(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-wide p0, Landroid/hardware/ssp/SSPPropertyBundle;->doubleVal:D

    return-wide p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-object p0, Landroid/hardware/ssp/SSPPropertyBundle;->stringVal:Ljava/lang/String;

    return-object p0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 313
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 314
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 315
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 316
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 317
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 318
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Landroid/hardware/ssp/SSPPropertyBundle;->type:I

    .line 320
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method protected getBooleanTypeCode()I
    .locals 1

    .prologue
    .line 342
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method protected getDoubleTypeCode()I
    .locals 1

    .prologue
    .line 378
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method protected getFloatTypeCode()I
    .locals 1

    .prologue
    .line 369
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method protected getIntegerTypeCode()I
    .locals 1

    .prologue
    .line 351
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method protected getLongTypeCode()I
    .locals 1

    .prologue
    .line 360
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method protected getStringTypeCode()I
    .locals 1

    .prologue
    .line 387
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, value:Ljava/lang/Object;,"TE;"
    invoke-static {}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->values()[Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 248
    .local v1, i:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    sget v5, Landroid/hardware/ssp/SSPPropertyBundle;->type:I

    invoke-virtual {v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 249
    invoke-virtual {v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 254
    .end local v1           #i:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    .end local v4           #value:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object v4

    .line 247
    .restart local v1       #i:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    .restart local v4       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setValue(ILjava/lang/Object;)V
    .locals 5
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->values()[Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 270
    .local v1, i:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    invoke-virtual {v1}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getCode()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 271
    sput p1, Landroid/hardware/ssp/SSPPropertyBundle;->type:I

    .line 272
    invoke-virtual {v1, p2}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 276
    .end local v1           #i:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    :cond_0
    return-void

    .line 269
    .restart local v1       #i:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 296
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 297
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 300
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 301
    sget-object v0, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    sget v0, Landroid/hardware/ssp/SSPPropertyBundle;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return-void
.end method
