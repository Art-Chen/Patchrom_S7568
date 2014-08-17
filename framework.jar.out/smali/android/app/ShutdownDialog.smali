.class public Landroid/app/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ShutdownDialog$ShutdownAnimHandler;
    }
.end annotation


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private final DRAW_BEFORE:I

.field private final DRAW_FINISH:I

.field private final DRAW_NEXT:I

.field private final DRAW_START:I

.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mDrawState:I

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Landroid/app/ShutdownDialog$ShutdownAnimHandler;

.field private mp:Landroid/media/MediaPlayer;

.field private sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field soundThread:Ljava/lang/Thread;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "theme"

    .prologue
    const/16 v1, 0xc8

    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 75
    iput v1, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 79
    iput v3, p0, Landroid/app/ShutdownDialog;->DRAW_BEFORE:I

    .line 80
    iput v1, p0, Landroid/app/ShutdownDialog;->DRAW_START:I

    .line 81
    const/16 v1, 0x12c

    iput v1, p0, Landroid/app/ShutdownDialog;->DRAW_NEXT:I

    .line 82
    const/16 v1, 0x190

    iput v1, p0, Landroid/app/ShutdownDialog;->DRAW_FINISH:I

    .line 84
    iput v3, p0, Landroid/app/ShutdownDialog;->mDrawState:I

    .line 85
    new-instance v1, Landroid/app/ShutdownDialog$ShutdownAnimHandler;

    invoke-direct {v1, p0, v2}, Landroid/app/ShutdownDialog$ShutdownAnimHandler;-><init>(Landroid/app/ShutdownDialog;Landroid/app/ShutdownDialog$1;)V

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/app/ShutdownDialog$ShutdownAnimHandler;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 93
    iput-object v2, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 95
    iput-object v2, p0, Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 96
    iput-object v2, p0, Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 99
    iput-object v2, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 269
    iput-object v2, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 275
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/app/ShutdownDialog$1;

    invoke-direct {v2, p0}, Landroid/app/ShutdownDialog$1;-><init>(Landroid/app/ShutdownDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/app/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    .line 111
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 114
    const-string v1, "CHINA"

    const-string v2, "KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 116
    :try_start_0
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "shutdown Dialog kor power snd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string/jumbo v1, "service.media.powersnd"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "ctl.start"

    const-string/jumbo v2, "powersnd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    invoke-direct {p0}, Landroid/app/ShutdownDialog;->prepareSoundThreadForPowerOff()V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/app/ShutdownDialog;->handle:I

    return v0
.end method

.method static synthetic access$1000(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ShutdownDialog;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/ShutdownDialog;->buf:[I

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/ShutdownDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Landroid/app/ShutdownDialog;->mDrawState:I

    return p1
.end method

.method static synthetic access$400(Landroid/app/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/ShutdownDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Landroid/app/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$702(Landroid/app/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$800(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/app/ShutdownDialog;->width:I

    return v0
.end method

.method static synthetic access$900(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/app/ShutdownDialog;->height:I

    return v0
.end method

.method private prepareSoundThreadForPowerOff()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 301
    new-instance v2, Ljava/io/File;

    const-string v6, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 303
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v6, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v2       #f:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 307
    const-string v6, "ShutdownDialog"

    const-string v7, "!@Sound file not found, Shutdown sound will not be start!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 310
    :cond_2
    const-string v6, "ShutdownDialog"

    const-string v7, "!@Sound file found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v6, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 313
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 314
    .local v5, volume:I
    if-gez v5, :cond_3

    .line 315
    const-string v6, "ShutdownDialog"

    const-string v7, "!@Volume is not enough"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_3
    const/4 v3, 0x0

    .line 321
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 322
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 324
    iget-object v6, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 325
    iget-object v6, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 326
    iget-object v6, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    new-instance v7, Landroid/app/ShutdownDialog$2;

    invoke-direct {v7, p0}, Landroid/app/ShutdownDialog$2;-><init>(Landroid/app/ShutdownDialog;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 335
    iget-object v6, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 344
    if-eqz v4, :cond_1

    .line 345
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v6

    goto :goto_0

    .line 336
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 337
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception raised. SoundThread is not started !"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    if-eqz v3, :cond_1

    .line 345
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 346
    :catch_2
    move-exception v6

    goto :goto_0

    .line 343
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 344
    :goto_2
    if-eqz v3, :cond_4

    .line 345
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 346
    :cond_4
    :goto_3
    throw v6

    :catch_3
    move-exception v7

    goto :goto_3

    .line 343
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 336
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 134
    const-string v2, "ShutdownDialog"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 137
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 138
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/app/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 140
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-static {v2}, Landroid/app/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->handle:I

    .line 145
    :goto_0
    iget v2, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v2}, Landroid/app/LibQmg;->qmgGetWidth(I)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->width:I

    .line 146
    iget v2, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v2}, Landroid/app/LibQmg;->qmgGetHeight(I)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->height:I

    .line 148
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/ShutdownDialog;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/ShutdownDialog;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 152
    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 153
    .local v1, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 155
    iget v2, p0, Landroid/app/ShutdownDialog;->width:I

    iget v3, p0, Landroid/app/ShutdownDialog;->height:I

    if-le v2, v3, :cond_1

    .line 156
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 161
    :goto_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 163
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 166
    iget v2, p0, Landroid/app/ShutdownDialog;->width:I

    iget v3, p0, Landroid/app/ShutdownDialog;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/ShutdownDialog;->buf:[I

    .line 168
    iget v2, p0, Landroid/app/ShutdownDialog;->width:I

    iget v3, p0, Landroid/app/ShutdownDialog;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    .line 169
    return-void

    .line 143
    .end local v0           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-static {v2}, Landroid/app/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->handle:I

    goto/16 :goto_0

    .line 158
    .restart local v0       #l:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 175
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/app/ShutdownDialog$ShutdownAnimHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/app/ShutdownDialog$ShutdownAnimHandler;->sendEmptyMessage(I)Z

    .line 178
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 179
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 185
    :goto_0
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 188
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 189
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 192
    :cond_0
    return-void

    .line 182
    :cond_1
    const-string v1, "ShutdownDialog"

    const-string v2, "StatusBarManager == null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 392
    return-void
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 396
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 6
    .parameter "waittime"

    .prologue
    const/4 v1, 0x0

    .line 360
    :goto_0
    iget v2, p0, Landroid/app/ShutdownDialog;->mDrawState:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 362
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownDialog"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    return v1

    .line 370
    :cond_1
    const-string v2, "ShutdownDialog"

    const-string v3, "animation end wait start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_1
    iget-object v2, p0, Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    :cond_2
    iget-object v2, p0, Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    :cond_3
    :goto_2
    const-string v1, "ShutdownDialog"

    const-string v2, "animation end detected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x1

    goto :goto_1

    .line 380
    :catch_1
    move-exception v0

    .line 381
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "ShutdownDialog"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 382
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
