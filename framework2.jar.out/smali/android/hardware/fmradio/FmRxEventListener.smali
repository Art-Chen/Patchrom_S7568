.class Landroid/hardware/fmradio/FmRxEventListener;
.super Ljava/lang/Object;
.source "FmRxEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fmradio/FmRxEventListener$FmRxEvents;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio"


# instance fields
.field private final EVENT_LISTEN:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmRxEventListener;->EVENT_LISTEN:I

    .line 39
    return-void
.end method


# virtual methods
.method public startListener(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 1
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 63
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListener$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/fmradio/FmRxEventListener$1;-><init>(Landroid/hardware/fmradio/FmRxEventListener;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmRxEventListener;->mThread:Ljava/lang/Thread;

    .line 146
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListener;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method public stopListener()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListener;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 151
    return-void
.end method
