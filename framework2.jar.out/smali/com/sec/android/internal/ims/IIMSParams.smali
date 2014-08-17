.class public Lcom/sec/android/internal/ims/IIMSParams;
.super Ljava/lang/Object;
.source "IIMSParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/internal/ims/IIMSParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioCodec:Ljava/lang/String;

.field private historyInfo:Ljava/lang/String;

.field private modifySupported:Ljava/lang/String;

.field private pLettering:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/sec/android/internal/ims/IIMSParams$1;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/IIMSParams$1;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/IIMSParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    return-object v0
.end method

.method public getPLettering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0
    .parameter "codec"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPLettering(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    return-void
.end method
