.class public Landroid/hardware/scontext/SContextPedometer;
.super Ljava/lang/Object;
.source "SContextPedometer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextPedometer;",
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
    .line 107
    new-instance v0, Landroid/hardware/scontext/SContextPedometer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepCount:J

    .line 23
    iput-wide v2, p0, Landroid/hardware/scontext/SContextPedometer;->calorie:D

    .line 24
    iput-wide v2, p0, Landroid/hardware/scontext/SContextPedometer;->distance:D

    .line 25
    iput-wide v2, p0, Landroid/hardware/scontext/SContextPedometer;->speed:D

    .line 26
    iput v4, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusST:I

    .line 27
    iput v4, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusLT:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepCount:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->calorie:D

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->distance:D

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->speed:D

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusST:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusLT:I

    .line 105
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->calorie:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->distance:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->speed:D

    return-wide v0
.end method

.method public getStepCount()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepCount:J

    return-wide v0
.end method

.method public getStepStatusLT()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusLT:I

    return v0
.end method

.method public getStepStatusST()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusST:I

    return v0
.end method

.method public setCalorie(D)V
    .locals 0
    .parameter "calorie"

    .prologue
    .line 48
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->calorie:D

    .line 49
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 56
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->distance:D

    .line 57
    return-void
.end method

.method public setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 64
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->speed:D

    .line 65
    return-void
.end method

.method public setStepCount(J)V
    .locals 0
    .parameter "stepCount"

    .prologue
    .line 39
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->stepCount:J

    .line 40
    return-void
.end method

.method public setStepStatusLT(I)V
    .locals 0
    .parameter "stepStatusLT"

    .prologue
    .line 80
    iput p1, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusLT:I

    .line 81
    return-void
.end method

.method public setStepStatusST(I)V
    .locals 0
    .parameter "stepStatusST"

    .prologue
    .line 72
    iput p1, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusST:I

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->calorie:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 92
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->distance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 93
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->speed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusST:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->stepStatusLT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
