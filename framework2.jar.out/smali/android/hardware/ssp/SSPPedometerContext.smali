.class public Landroid/hardware/ssp/SSPPedometerContext;
.super Ljava/lang/Object;
.source "SSPPedometerContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPPedometerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calorie:D

.field private distance:D

.field private speed:D

.field private stepCount:J

.field private stepStatusLT:I

.field private stepStatusST:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Landroid/hardware/ssp/SSPPedometerContext$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPedometerContext$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPPedometerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepCount:J

    .line 48
    iput-wide v2, p0, Landroid/hardware/ssp/SSPPedometerContext;->calorie:D

    .line 49
    iput-wide v2, p0, Landroid/hardware/ssp/SSPPedometerContext;->distance:D

    .line 50
    iput-wide v2, p0, Landroid/hardware/ssp/SSPPedometerContext;->speed:D

    .line 51
    iput v4, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusST:I

    .line 52
    iput v4, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusLT:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPPedometerContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepCount:J

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->calorie:D

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->distance:D

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->speed:D

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusST:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusLT:I

    .line 217
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->calorie:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->distance:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->speed:D

    return-wide v0
.end method

.method public getStepCount()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepCount:J

    return-wide v0
.end method

.method public getStepStatusLT()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusLT:I

    return v0
.end method

.method public getStepStatusST()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusST:I

    return v0
.end method

.method public setCalorie(D)V
    .locals 0
    .parameter "calorie"

    .prologue
    .line 100
    iput-wide p1, p0, Landroid/hardware/ssp/SSPPedometerContext;->calorie:D

    .line 101
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 119
    iput-wide p1, p0, Landroid/hardware/ssp/SSPPedometerContext;->distance:D

    .line 120
    return-void
.end method

.method public setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 138
    iput-wide p1, p0, Landroid/hardware/ssp/SSPPedometerContext;->speed:D

    .line 139
    return-void
.end method

.method public setStepCount(J)V
    .locals 0
    .parameter "stepCount"

    .prologue
    .line 81
    iput-wide p1, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepCount:J

    .line 82
    return-void
.end method

.method public setStepStatusLT(I)V
    .locals 0
    .parameter "stepStatusLT"

    .prologue
    .line 176
    iput p1, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusLT:I

    .line 177
    return-void
.end method

.method public setStepStatusST(I)V
    .locals 0
    .parameter "stepStatusST"

    .prologue
    .line 157
    iput p1, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusST:I

    .line 158
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 196
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->calorie:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 198
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->distance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 199
    iget-wide v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->speed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 200
    iget v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusST:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/hardware/ssp/SSPPedometerContext;->stepStatusLT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
