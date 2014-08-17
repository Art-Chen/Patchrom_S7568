.class Landroid/app/ShutdownDialog$2;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ShutdownDialog;->prepareSoundThreadForPowerOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 328
    const-string v0, "ShutdownDialog"

    const-string v1, "!@onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$700(Landroid/app/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "ShutdownDialog"

    const-string v1, "!@Releasing sAnimationSound end lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$700(Landroid/app/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 333
    :cond_0
    return-void
.end method
