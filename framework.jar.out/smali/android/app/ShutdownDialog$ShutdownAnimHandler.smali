.class Landroid/app/ShutdownDialog$ShutdownAnimHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownAnimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method private constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ShutdownDialog;Landroid/app/ShutdownDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/app/ShutdownDialog$ShutdownAnimHandler;-><init>(Landroid/app/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x12c

    const/16 v4, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/LibQmg;->qmgLoadFrame(I[I)I

    move-result v9

    .line 203
    .local v9, ret:I
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    .line 205
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #setter for: Landroid/app/ShutdownDialog;->mDrawState:I
    invoke-static {v0, v4}, Landroid/app/ShutdownDialog;->access$302(Landroid/app/ShutdownDialog;I)I

    .line 208
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #setter for: Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v1}, Landroid/app/ShutdownDialog;->access$402(Landroid/app/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    new-instance v1, Landroid/app/ShutdownDialog$ShutdownAnimHandler$1;

    invoke-direct {v1, p0}, Landroid/app/ShutdownDialog$ShutdownAnimHandler$1;-><init>(Landroid/app/ShutdownDialog$ShutdownAnimHandler;)V

    #setter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Landroid/app/ShutdownDialog;->access$502(Landroid/app/ShutdownDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 225
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #setter for: Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v1}, Landroid/app/ShutdownDialog;->access$702(Landroid/app/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 228
    :try_start_1
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$700(Landroid/app/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_1
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    iget-object v0, v0, Landroid/app/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    :cond_0
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #setter for: Landroid/app/ShutdownDialog;->mDrawState:I
    invoke-static {v0, v10}, Landroid/app/ShutdownDialog;->access$302(Landroid/app/ShutdownDialog;I)I

    .line 241
    :cond_1
    if-ltz v9, :cond_4

    .line 242
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Draw frame: ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$1000(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)[I

    move-result-object v1

    iget-object v3, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->width:I
    invoke-static {v3}, Landroid/app/ShutdownDialog;->access$800(Landroid/app/ShutdownDialog;)I

    move-result v3

    iget-object v4, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->width:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$800(Landroid/app/ShutdownDialog;)I

    move-result v6

    iget-object v4, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->height:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$900(Landroid/app/ShutdownDialog;)I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 244
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$1000(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 245
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$1100(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$1000(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    if-nez v9, :cond_3

    .line 248
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 251
    :cond_2
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/LibQmg;->qmgClose(I)I

    .line 252
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    const/16 v1, 0x190

    #setter for: Landroid/app/ShutdownDialog;->mDrawState:I
    invoke-static {v0, v1}, Landroid/app/ShutdownDialog;->access$302(Landroid/app/ShutdownDialog;I)I

    .line 265
    :goto_2
    return-void

    .line 211
    :catch_0
    move-exception v8

    .line 212
    .local v8, e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #setter for: Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v5}, Landroid/app/ShutdownDialog;->access$402(Landroid/app/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 213
    const-string v0, "ShutdownDialog"

    const-string v1, "!@Exception occurs while sAnimationEndedLock.acquire()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .line 230
    .restart local v8       #e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #setter for: Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v5}, Landroid/app/ShutdownDialog;->access$702(Landroid/app/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 231
    const-string v0, "ShutdownDialog"

    const-string v1, "!@Exception occurs while sAnimationSoundEndedLock.acquire()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 255
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_3
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v10, v0, v1}, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 259
    :cond_4
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "libQmg.qmgLoadFrame() return < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 263
    :cond_5
    iget-object v0, p0, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/LibQmg;->qmgClose(I)I

    goto :goto_2
.end method
