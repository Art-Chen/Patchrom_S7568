.class public Landroid/hardware/scontext/SContextApproach;
.super Ljava/lang/Object;
.source "SContextApproach.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextApproach;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private approach:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/hardware/scontext/SContextApproach$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextApproach$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextApproach;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextApproach;->approach:I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextApproach;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextApproach;->approach:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getApproach()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Landroid/hardware/scontext/SContextApproach;->approach:I

    return v0
.end method

.method public setApproach(I)V
    .locals 0
    .parameter "approach"

    .prologue
    .line 23
    iput p1, p0, Landroid/hardware/scontext/SContextApproach;->approach:I

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 34
    iget v0, p0, Landroid/hardware/scontext/SContextApproach;->approach:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return-void
.end method
