.class Landroid/webkit/HTML5VideoFullScreen$3;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Landroid/webkit/HTML5VideoFullScreen;->access$902(Landroid/webkit/HTML5VideoFullScreen;I)I

    .line 347
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->switchProgressView(Z)V

    .line 350
    :cond_0
    return-void
.end method
