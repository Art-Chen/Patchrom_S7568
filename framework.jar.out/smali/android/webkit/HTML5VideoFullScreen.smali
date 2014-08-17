.class public Landroid/webkit/HTML5VideoFullScreen;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;,
        Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoFullScreen"

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field private mFullScreenMode:I

.field private mMediaController:Landroid/widget/MediaController;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2
    .parameter "context"
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "autoStart"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 82
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$1;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 228
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$2;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 342
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$3;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 129
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;-><init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    .line 130
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 131
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    .line 132
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    .line 133
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/HTML5VideoFullScreen;->init(IIZ)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$402(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->prepareForFullScreen()V

    return-void
.end method

.method static synthetic access$600()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$902(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    return p1
.end method

.method private attachMediaController()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 144
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method private getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private prepareForFullScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 158
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 164
    .local v1, mc:Landroid/widget/MediaController;
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 165
    invoke-direct {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->setMediaController(Landroid/widget/MediaController;)V

    .line 166
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 167
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    .line 168
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5VideoFullScreen;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 169
    .end local v1           #mc:Landroid/widget/MediaController;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private setMediaController(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 137
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    .line 138
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->attachMediaController()V

    .line 139
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 153
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebView;)V
    .locals 8
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    iput v6, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 260
    iput v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 261
    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 262
    iput-object p2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 264
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 265
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 266
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3, v6}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusable(Z)V

    .line 267
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3, v6}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    .line 268
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->requestFocus()Z

    .line 272
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    .line 273
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 278
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    invoke-virtual {p3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 282
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 283
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 284
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p3}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 289
    invoke-virtual {p3}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->hideAll()V

    .line 291
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v3

    sput-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    .line 292
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 294
    :try_start_0
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_1
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v3, "HTML5VideoFullScreen"

    const-string v4, "enterFullScreenVideoState. exception caught!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    sget-object v4, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 301
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 221
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 336
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 182
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 184
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v1, p0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 188
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_8

    .line 189
    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    .line 191
    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    .line 193
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    .line 201
    :goto_3
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_3

    .line 202
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 204
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->getAutostart()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 205
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 210
    :cond_3
    :goto_4
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 211
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    .line 215
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    .line 217
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 218
    return-void

    :cond_5
    move v1, v2

    .line 189
    goto :goto_0

    :cond_6
    move v1, v2

    .line 191
    goto :goto_1

    :cond_7
    move v1, v2

    .line 193
    goto :goto_2

    .line 196
    :cond_8
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    goto :goto_3

    .line 207
    :cond_9
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 355
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->toggleMediaControlsVisiblity()V

    .line 359
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected switchProgressView(Z)V
    .locals 2
    .parameter "playerBuffering"

    .prologue
    .line 364
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 365
    if-eqz p1, :cond_1

    .line 366
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
