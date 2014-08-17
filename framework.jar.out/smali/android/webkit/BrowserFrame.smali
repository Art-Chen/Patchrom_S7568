.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/BrowserFrame$ConfigCallback;,
        Landroid/webkit/BrowserFrame$JSObject;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final DRAWABLEDIR:I = 0x3

.field private static final EMAIL_MULTI_TEXT_TYPE_MISMATCH:I = 0x9

.field private static final EMAIL_TEXT_TYPE_MISMATCH:I = 0x8

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field private static final FILE_UPLOAD_NO_FILE_CHOSEN:I = 0x7

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field private static final PATTERN_TYPE_MISMATCH:I = 0xb

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final RESET_LABEL:I = 0x5

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field private static final URL_TEXT_TYPE_MISMATCH:I = 0xa

.field static sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDevActionError:Z

.field private mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJavaScriptObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/BrowserFrame$JSObject;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mRemovedJavaScriptObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchBox:Landroid/webkit/SearchBoxImpl;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V
    .locals 5
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter "settings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewCore;",
            "Landroid/webkit/CallbackProxy;",
            "Landroid/webkit/WebSettings;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 90
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 94
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 95
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 100
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mDevActionError:Z

    .line 118
    iput-object v4, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 120
    iput-object v4, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 241
    .local v1, appContext:Landroid/content/Context;
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    .line 242
    new-instance v2, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    .line 244
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 246
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    .line 247
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 252
    :goto_0
    invoke-static {v1}, Landroid/webkit/CacheManager;->init(Landroid/content/Context;)V

    .line 254
    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 256
    invoke-static {v1}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    .line 259
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_1

    .line 260
    new-instance v3, Landroid/webkit/BrowserFrame$ConfigCallback;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkit/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    .line 263
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 265
    :cond_1
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    .line 267
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    .line 268
    invoke-direct {p0, p5}, Landroid/webkit/BrowserFrame;->addJavaScriptObjects(Ljava/util/Map;)V

    .line 269
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    .line 271
    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    .line 272
    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    .line 273
    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 274
    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 275
    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 277
    new-instance v2, Landroid/webkit/SearchBoxImpl;

    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v2, v3, v4}, Landroid/webkit/SearchBoxImpl;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;)V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mSearchBox:Landroid/webkit/SearchBoxImpl;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 280
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    .line 287
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 289
    return-void

    .line 249
    .local v0, am:Landroid/app/ActivityManager;
    :cond_2
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method private UpdateUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1464
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUpdateUrl(Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/BrowserFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeAuthenticationCancel(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/BrowserFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/BrowserFrame;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    return-void
.end method

.method private addJavaScriptObjects(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 718
    :cond_0
    return-void

    .line 710
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 711
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 713
    .local v0, interfaceName:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 714
    .local v2, object:Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 715
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v4, Landroid/webkit/BrowserFrame$JSObject;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Landroid/webkit/BrowserFrame$JSObject;-><init>(Landroid/webkit/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    return-void
.end method

.method private native childFramesAsText()Ljava/lang/String;
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 1126
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    .line 1111
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/BrowserFrame;

    move-result-object v0

    return-object v0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 4
    .parameter "policyFunction"

    .prologue
    const/16 v3, 0x3eb

    .line 1133
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1135
    .local v0, dontResend:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1137
    .local v1, resend:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 1138
    return-void
.end method

.method private density()F
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private didFinishLoading()V
    .locals 8

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_1

    .line 1413
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    iget-object v7, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/webkit/KeyStoreHandler;->installCert(Landroid/content/Context;)V

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    invoke-virtual {v0}, Landroid/webkit/DownloadFileHandler;->handleFile()Z

    .line 1419
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    iget-object v1, v0, Landroid/webkit/DownloadFileHandler;->mUrl:Ljava/lang/String;

    .line 1420
    .local v1, url:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    iget-object v2, v0, Landroid/webkit/DownloadFileHandler;->mUserAgent:Ljava/lang/String;

    .line 1421
    .local v2, userAgent:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    iget-object v3, v0, Landroid/webkit/DownloadFileHandler;->mContentDisposition:Ljava/lang/String;

    .line 1422
    .local v3, contentDisposition:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    iget-object v4, v0, Landroid/webkit/DownloadFileHandler;->mMimeType:Ljava/lang/String;

    .line 1423
    .local v4, mimeType:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    iget-wide v5, v0, Landroid/webkit/DownloadFileHandler;->mContentLength:J

    .line 1425
    .local v5, contentLength:J
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "handle"
    .parameter "host"
    .parameter "realm"
    .parameter "useCachedCredentials"
    .parameter "suppressDialog"

    .prologue
    .line 1266
    new-instance v0, Landroid/webkit/BrowserFrame$1;

    invoke-direct {v0, p0, p4, p1, p5}, Landroid/webkit/BrowserFrame$1;-><init>(Landroid/webkit/BrowserFrame;ZIZ)V

    .line 1288
    .local v0, handler:Landroid/webkit/HttpAuthHandler;
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method private didReceiveData([BI)V
    .locals 1
    .parameter "data"
    .parameter "size"

    .prologue
    .line 1405
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/KeyStoreHandler;->didReceiveData([BI)V

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/DownloadFileHandler;->didReceiveData([BI)V

    goto :goto_0
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1098
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 1099
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 1103
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 1104
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private downloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "contentLength"

    .prologue
    .line 1373
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1376
    .local v7, extension:Ljava/lang/String;
    invoke-static {v7}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1378
    if-nez p4, :cond_0

    .line 1379
    const-string p4, ""
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v7           #extension:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p3}, Landroid/webkit/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1387
    invoke-static {p4}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1388
    new-instance v0, Landroid/webkit/KeyStoreHandler;

    invoke-direct {v0, p4}, Landroid/webkit/KeyStoreHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1399
    :goto_1
    return-void

    .line 1391
    :cond_1
    invoke-static {p4}, Landroid/webkit/DownloadFileHandler;->isDownLoadableContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1392
    const-string/jumbo v0, "webkit"

    const-string v1, "isDownLoadableContent is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    new-instance v0, Landroid/webkit/DownloadFileHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/DownloadFileHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mDownloadFileHandler:Landroid/webkit/DownloadFileHandler;

    goto :goto_1

    .line 1396
    :cond_2
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 7
    .parameter "uri"
    .parameter "buffer"
    .parameter "offset"
    .parameter "expectedSize"

    .prologue
    .line 780
    const/4 v2, 0x0

    .line 782
    .local v2, size:I
    :try_start_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 784
    .local v3, stream:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 785
    if-gt v2, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_0

    .line 787
    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 791
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 799
    .end local v3           #stream:Ljava/io/InputStream;
    :goto_1
    return v2

    .line 789
    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 792
    .end local v3           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v2, 0x0

    .line 798
    goto :goto_1

    .line 795
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 796
    .local v1, e2:Ljava/io/IOException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 4
    .parameter "uri"

    .prologue
    .line 759
    const/4 v0, 0x0

    .line 761
    .local v0, size:I
    :try_start_0
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 763
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 764
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_0
    return v0

    .line 765
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getRawResFilename(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 1177
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "id"
    .parameter "context"

    .prologue
    .line 1181
    packed-switch p0, :pswitch_data_0

    .line 1230
    const-string/jumbo v4, "webkit"

    const-string v5, "getRawResFilename got incompatible resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v4, ""

    .line 1244
    :goto_0
    return-object v4

    .line 1183
    :pswitch_0
    const v2, 0x1100005

    .line 1233
    .local v2, resid:I
    :goto_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1234
    .local v3, value:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1235
    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    .line 1236
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1237
    .local v1, path:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1238
    .local v0, index:I
    if-gez v0, :cond_0

    .line 1239
    const-string/jumbo v4, "webkit"

    const-string v5, "Can\'t find drawable directory."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v4, ""

    goto :goto_0

    .line 1187
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #resid:I
    .end local v3           #value:Landroid/util/TypedValue;
    :pswitch_1
    const v2, 0x1100004

    .line 1188
    .restart local v2       #resid:I
    goto :goto_1

    .line 1192
    .end local v2           #resid:I
    :pswitch_2
    const v2, 0x10800e2

    .line 1193
    .restart local v2       #resid:I
    goto :goto_1

    .line 1196
    .end local v2           #resid:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040572

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1200
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040574

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1204
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040575

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1208
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040573

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1213
    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040720

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1217
    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040721

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1221
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040722

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1225
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040723

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1242
    .restart local v0       #index:I
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #resid:I
    .restart local v3       #value:Landroid/util/TypedValue;
    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1244
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 23
    .parameter "url"

    .prologue
    .line 814
    const-string v3, "file:///android_asset/"

    .line 815
    .local v3, ANDROID_ASSET:Ljava/lang/String;
    const-string v5, "file:///android_res/"

    .line 816
    .local v5, ANDROID_RESOURCE:Ljava/lang/String;
    const-string v4, "content:"

    .line 819
    .local v4, ANDROID_CONTENT:Ljava/lang/String;
    const-string v19, "file:///android_res/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 820
    const-string v19, "file:///android_res/"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 821
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    .line 822
    :cond_0
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "url has length 0 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v19, 0x0

    .line 886
    :goto_0
    return-object v19

    .line 825
    :cond_1
    const/16 v19, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 826
    .local v15, slash:I
    const/16 v19, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 827
    .local v8, dot:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 828
    :cond_2
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incorrect res path: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/16 v19, 0x0

    goto :goto_0

    .line 831
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 832
    .local v16, subClassName:Ljava/lang/String;
    add-int/lit8 v19, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 833
    .local v12, fieldName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 835
    .local v10, errorMsg:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".R$"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 839
    .local v7, d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 840
    .local v11, field:Ljava/lang/reflect/Field;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    .line 841
    .local v13, id:I
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 842
    .local v18, value:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 843
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v19

    goto/16 :goto_0

    .line 849
    :cond_4
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "not of type string: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 852
    .end local v7           #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #field:Ljava/lang/reflect/Field;
    .end local v13           #id:I
    .end local v18           #value:Landroid/util/TypedValue;
    :catch_0
    move-exception v9

    .line 853
    .local v9, e:Ljava/lang/Exception;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 858
    .end local v8           #dot:I
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #errorMsg:Ljava/lang/String;
    .end local v12           #fieldName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #subClassName:Ljava/lang/String;
    :cond_5
    const-string v19, "file:///android_asset/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 859
    const-string v19, "file:///android_asset/"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 861
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 862
    .local v6, assets:Landroid/content/res/AssetManager;
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    goto/16 :goto_0

    .line 863
    .end local v6           #assets:Landroid/content/res/AssetManager;
    :catch_1
    move-exception v9

    .line 864
    .local v9, e:Ljava/io/IOException;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 868
    .end local v9           #e:Ljava/io/IOException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "content:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 875
    const/16 v19, 0x3f

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 876
    .local v14, mimeIndex:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_7

    .line 877
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 879
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 880
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v19

    goto/16 :goto_0

    .line 881
    .end local v14           #mimeIndex:I
    .end local v17           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v9

    .line 882
    .local v9, e:Ljava/lang/Exception;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 886
    .end local v9           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "url"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v2, 0x0

    .line 536
    if-nez p3, :cond_0

    if-nez p2, :cond_2

    .line 537
    :cond_0
    if-eqz p3, :cond_2

    .line 539
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mDevActionError:Z

    if-nez v0, :cond_1

    .line 541
    const-string v0, "GATE"

    const-string v1, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 545
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 546
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 547
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mDevActionError:Z

    .line 550
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseEmailViewPort()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->nativeRequiresSmartFit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseEmailViewPort(Z)V

    .line 552
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 557
    :cond_2
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .parameter "url"
    .parameter "favicon"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v1, 0x0

    .line 472
    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 474
    if-nez p4, :cond_0

    if-nez p3, :cond_1

    .line 475
    :cond_0
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    .line 477
    if-eqz p4, :cond_1

    .line 479
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 482
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 483
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 486
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 489
    :cond_1
    return-void
.end method

.method private maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "postData"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 993
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1008
    :try_start_0
    new-instance v3, Landroid/net/WebAddress;

    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, schemePlusHost:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1015
    .local v0, postString:Ljava/lang/String;
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1017
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v2}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1020
    .local v1, saved:[Ljava/lang/String;
    if-eqz v1, :cond_3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1024
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_0

    .line 1028
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v2, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1038
    .end local v0           #postString:Ljava/lang/String;
    .end local v1           #saved:[Ljava/lang/String;
    .end local v2           #schemePlusHost:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1034
    .restart local v0       #postString:Ljava/lang/String;
    .restart local v1       #saved:[Ljava/lang/String;
    .restart local v2       #schemePlusHost:Ljava/lang/String;
    .restart local v3       #uri:Landroid/net/WebAddress;
    :cond_3
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p2, p3, v5}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V
.end method

.method private native nativeAuthenticationCancel(I)V
.end method

.method private native nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGetShouldStartScrolledRight(I)Z
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSetCarrierID(Ljava/lang/String;)V
.end method

.method private native nativeSetUAProfURL(Ljava/lang/String;)V
.end method

.method private native nativeSslCertErrorCancel(II)V
.end method

.method private native nativeSslCertErrorProceed(I)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mDevActionError:Z

    .line 408
    const-string v0, "GATE"

    const-string v1, "<GATE-M>DEV_ACTION_ERROR</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 411
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 414
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method private reportSslCertError(II[BLjava/lang/String;)V
    .locals 7
    .parameter "handle"
    .parameter "certError"
    .parameter "certDER"
    .parameter "url"

    .prologue
    .line 1302
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1303
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1304
    .local v3, sslCert:Landroid/net/http/SslCertificate;
    invoke-static {p2, v3, p4}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1312
    .local v4, sslError:Landroid/net/http/SslError;
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/SslCertLookupTable;->isAllowed(Landroid/net/http/SslError;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1313
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    .line 1314
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5, v4}, Landroid/webkit/CallbackProxy;->onProceededAfterSslError(Landroid/net/http/SslError;)V

    .line 1338
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #sslCert:Landroid/net/http/SslCertificate;
    .end local v4           #sslError:Landroid/net/http/SslError;
    :goto_0
    return-void

    .line 1305
    :catch_0
    move-exception v1

    .line 1307
    .local v1, e:Ljava/io/IOException;
    const-string/jumbo v5, "webkit"

    const-string v6, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    goto :goto_0

    .line 1318
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #sslCert:Landroid/net/http/SslCertificate;
    .restart local v4       #sslError:Landroid/net/http/SslError;
    :cond_0
    new-instance v2, Landroid/webkit/BrowserFrame$2;

    invoke-direct {v2, p0, v4, p1, p2}, Landroid/webkit/BrowserFrame$2;-><init>(Landroid/webkit/BrowserFrame;Landroid/net/http/SslError;II)V

    .line 1337
    .local v2, handler:Landroid/webkit/SslErrorHandler;
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5, v2, v4}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method private requestClientCert(ILjava/lang/String;)V
    .locals 3
    .parameter "handle"
    .parameter "hostAndPort"

    .prologue
    const/4 v2, 0x0

    .line 1348
    invoke-static {}, Landroid/webkit/SslClientCertLookupTable;->getInstance()Landroid/webkit/SslClientCertLookupTable;

    move-result-object v0

    .line 1349
    .local v0, table:Landroid/webkit/SslClientCertLookupTable;
    invoke-virtual {v0, p2}, Landroid/webkit/SslClientCertLookupTable;->IsAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    invoke-virtual {v0, p2}, Landroid/webkit/SslClientCertLookupTable;->PrivateKey(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    .line 1362
    :goto_0
    return-void

    .line 1354
    :cond_0
    invoke-virtual {v0, p2}, Landroid/webkit/SslClientCertLookupTable;->IsDenied(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 1356
    check-cast v1, [[B

    invoke-virtual {p0, p1, v2, v1}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    goto :goto_0

    .line 1359
    :cond_1
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v2, Landroid/webkit/ClientCertRequestHandler;

    invoke-direct {v2, p0, p1, p2, v0}, Landroid/webkit/ClientCertRequestHandler;-><init>(Landroid/webkit/BrowserFrame;ILjava/lang/String;Landroid/webkit/SslClientCertLookupTable;)V

    invoke-virtual {v1, v2, p2}, Landroid/webkit/CallbackProxy;->onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestFocus()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    .line 1119
    return-void
.end method

.method private resetLoadingStates()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 441
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 442
    return-void
.end method

.method private saveFormData(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 496
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 499
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewDatabase;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 503
    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private native setCacheDisabled(Z)V
.end method

.method private setCertificate([B)V
    .locals 4
    .parameter "cert_der"

    .prologue
    .line 1437
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1438
    .local v0, cert:Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2, v3}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    :goto_0
    return-void

    .line 1439
    :catch_0
    move-exception v1

    .line 1441
    .local v1, e:Ljava/io/IOException;
    const-string/jumbo v2, "webkit"

    const-string v3, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 3
    .parameter "newProgress"

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    .line 1079
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1081
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->nativeGetWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->setWebFeedLinks([Landroid/webkit/WebFeedLink;)V

    .line 1083
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1088
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_1

    .line 1089
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 1091
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 638
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 1045
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1046
    .local v0, androidResource:Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 1047
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1068
    :cond_0
    :goto_0
    return-object v4

    .line 1052
    :cond_1
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1053
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1056
    :cond_2
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, p1}, Landroid/webkit/CallbackProxy;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    .line 1057
    .local v4, response:Landroid/webkit/WebResourceResponse;
    if-nez v4, :cond_0

    const-string v6, "browser:incognito"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1059
    :try_start_0
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1060
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x1100003

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 1062
    .local v2, ins:Ljava/io/InputStream;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v6, "text/html"

    const-string/jumbo v7, "utf8"

    invoke-direct {v5, v6, v7, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #response:Landroid/webkit/WebResourceResponse;
    .local v5, response:Landroid/webkit/WebResourceResponse;
    move-object v4, v5

    .line 1066
    .end local v5           #response:Landroid/webkit/WebResourceResponse;
    .restart local v4       #response:Landroid/webkit/WebResourceResponse;
    goto :goto_0

    .line 1063
    .end local v2           #ins:Ljava/io/InputStream;
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1065
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "webkit"

    const-string v7, "Failed opening raw.incognito_mode_start_page"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldSaveFormData()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 510
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 512
    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    :cond_0
    return v1
.end method

.method private spellCheckFinished(I)V
    .locals 1
    .parameter "misspelledWordCount"

    .prologue
    .line 1458
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onSpellCheckFinish(I)V

    .line 1459
    return-void
.end method

.method private startLoadingResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BJIZZZLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .locals 20
    .parameter "loaderHandle"
    .parameter "url"
    .parameter "method"
    .parameter "headers"
    .parameter "postData"
    .parameter "postDataIdentifier"
    .parameter "cacheMode"
    .parameter "mainResource"
    .parameter "userGesture"
    .parameter "synchronous"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 919
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result p8

    .line 922
    :cond_0
    const-string v3, "POST"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 925
    if-nez p8, :cond_1

    .line 926
    const/16 p8, 0x2

    .line 928
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->getUsernamePassword()[Ljava/lang/String;

    move-result-object v19

    .line 929
    .local v19, ret:[Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 930
    const/4 v3, 0x0

    aget-object v16, v19, v3

    .line 931
    .local v16, domUsername:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v15, v19, v3

    .line 932
    .local v15, domPassword:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Landroid/webkit/BrowserFrame;->maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V

    .line 937
    .end local v15           #domPassword:Ljava/lang/String;
    .end local v16           #domUsername:Ljava/lang/String;
    .end local v19           #ret:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 947
    .local v8, isMainFramePage:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p1

    move/from16 v7, p11

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p6

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-static/range {v3 .. v14}, Landroid/webkit/LoadListener;->getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;

    move-result-object v17

    .line 951
    .local v17, loadListener:Landroid/webkit/LoadListener;
    invoke-static {}, Landroid/webkit/LoadListener;->getNativeLoaderCount()I

    move-result v3

    const/16 v4, 0x12c

    if-le v3, v4, :cond_4

    .line 956
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    const v5, 0x104015e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 976
    .end local v17           #loadListener:Landroid/webkit/LoadListener;
    .end local p8
    :cond_3
    :goto_0
    return-object v17

    .line 965
    .restart local v17       #loadListener:Landroid/webkit/LoadListener;
    .restart local p8
    :cond_4
    new-instance v18, Landroid/webkit/FrameLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/webkit/CallbackProxy;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/webkit/FrameLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V

    .line 967
    .local v18, loader:Landroid/webkit/FrameLoader;
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setHeaders(Ljava/util/HashMap;)V

    .line 968
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setPostData([B)V

    .line 971
    const-string v3, "If-Modified-Since"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "If-None-Match"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/16 p8, 0x2

    .end local p8
    :cond_6
    move-object/from16 v0, v18

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setCacheMode(I)V

    .line 975
    invoke-virtual/range {v18 .. v18}, Landroid/webkit/FrameLoader;->executeLoad()Z

    .line 976
    if-eqz p11, :cond_3

    const/16 v17, 0x0

    goto :goto_0
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 521
    if-eqz p2, :cond_0

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 523
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postResetStateAll()V

    .line 525
    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 1145
    return-void
.end method

.method private urlBlocked(Ljava/lang/String;)Z
    .locals 12
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 1617
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_0

    .line 1618
    const-string/jumbo v0, "webkit"

    const-string v1, "Firewall not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :goto_0
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "euler: isUrlBlocked = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v4, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v11, :cond_2

    .line 1626
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1628
    const-string/jumbo v0, "webkit"

    const-string v1, "euler: stopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1632
    const-string/jumbo v0, "webkit"

    const-string v1, "euler: loadFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    iget-boolean v1, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/BrowserFrame;->loadFinished(Ljava/lang/String;IZ)V

    .line 1636
    const-string v2, ""

    .line 1638
    .local v2, data:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1639
    .local v10, res:Landroid/content/res/Resources;
    const v0, 0x1100004

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 1640
    .local v8, ins:Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1642
    .local v6, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, line:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1643
    const-string v0, "%s"

    invoke-virtual {v9, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1644
    const-string v0, "%e"

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    const v4, 0x10401d9

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 1620
    .end local v2           #data:Ljava/lang/String;
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #ins:Ljava/io/InputStream;
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #res:Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v0, "webkit"

    const-string v1, "Firewall is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1647
    .restart local v2       #data:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v8       #ins:Ljava/io/InputStream;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #res:Landroid/content/res/Resources;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1652
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #ins:Ljava/io/InputStream;
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #res:Landroid/content/res/Resources;
    :goto_2
    const-string/jumbo v0, "webkit"

    const-string v1, "euler: loadData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p1

    .line 1653
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 1657
    .end local v2           #data:Ljava/lang/String;
    :goto_3
    return v0

    .line 1648
    .restart local v2       #data:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1649
    .local v7, e:Ljava/io/IOException;
    const-string v2, "Failed loading web page!"

    goto :goto_2

    .line 1657
    .end local v2           #data:Ljava/lang/String;
    .end local v7           #e:Ljava/io/IOException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private windowObjectCleared(I)V
    .locals 5
    .parameter "nativeFramePointer"

    .prologue
    .line 691
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 692
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    .local v0, interfaceName:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/BrowserFrame$JSObject;

    .line 695
    .local v2, jsobject:Landroid/webkit/BrowserFrame$JSObject;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/webkit/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 696
    iget-object v3, v2, Landroid/webkit/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    iget-boolean v4, v2, Landroid/webkit/BrowserFrame$JSObject;->requireAnnotation:Z

    invoke-direct {p0, p1, v3, v0, v4}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 700
    .end local v0           #interfaceName:Ljava/lang/String;
    .end local v2           #jsobject:Landroid/webkit/BrowserFrame$JSObject;
    :cond_1
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 701
    return-void
.end method


# virtual methods
.method public SetCarrierID(Ljava/lang/String;)V
    .locals 3
    .parameter "CarrierID"

    .prologue
    .line 1474
    const-string v0, "BrowserFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling SetCarrierID in BrowserFrame : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSetCarrierID(Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method public SetUAProfURL(Ljava/lang/String;)V
    .locals 2
    .parameter "UAProfURL"

    .prologue
    .line 1469
    const-string v0, "BrowserFrame"

    const-string v1, "Calling SetUAProfURL in BrowserFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSetUAProfURL(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .parameter "obj"
    .parameter "interfaceName"
    .parameter "requireAnnotation"

    .prologue
    .line 739
    sget-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 740
    :cond_0
    invoke-virtual {p0, p2}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v1, Landroid/webkit/BrowserFrame$JSObject;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkit/BrowserFrame$JSObject;-><init>(Landroid/webkit/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    return-void
.end method

.method public native cacheDisabled()Z
.end method

.method certificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V

    .line 569
    :cond_0
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 578
    return-void
.end method

.method didFirstLayout()V
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 461
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 463
    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v0, text:Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 665
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    .line 669
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->childFramesAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 672
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 673
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 648
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void
.end method

.method firstLayoutDone()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method public getReaderData(Ljava/lang/String;)V
    .locals 2
    .parameter "reader_data"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v0, "webkit"

    const-string v1, "Reader:BrowserFrame - getReaderData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method public getRecognizeData(Ljava/lang/String;)V
    .locals 2
    .parameter "recog_data"

    .prologue
    .line 434
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v0, "webkit"

    const-string v1, "Reader:BrowserFrame - getRecognizeData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method getSearchBox()Landroid/webkit/SearchBox;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSearchBox:Landroid/webkit/SearchBoxImpl;

    return-object v0
.end method

.method getShouldStartScrolledRight()Z
    .locals 1

    .prologue
    .line 1609
    iget v0, p0, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Landroid/webkit/BrowserFrame;->nativeGetShouldStartScrolledRight(I)Z

    move-result v0

    return v0
.end method

.method getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 388
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 390
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 586
    iget-boolean v4, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    if-eqz v4, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 591
    :pswitch_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 594
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_2

    .line 595
    new-instance v3, Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 596
    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, schemePlusHost:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, up:[Ljava/lang/String;
    if-eqz v2, :cond_2

    aget-object v4, v2, v6

    if-eqz v4, :cond_2

    .line 600
    aget-object v4, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    .end local v1           #schemePlusHost:Ljava/lang/String;
    .end local v2           #up:[Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :cond_2
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v4

    if-nez v4, :cond_0

    .line 605
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v4

    const/16 v5, 0x6c

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 612
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto :goto_0

    .line 617
    :pswitch_2
    iget v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 618
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 619
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Landroid/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 725
    iget-boolean v2, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v2, v1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v1

    .line 731
    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 350
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    const-string p5, "about:blank"

    .line 353
    :cond_1
    if-nez p2, :cond_2

    .line 354
    const-string p2, ""

    .line 359
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 360
    :cond_3
    const-string p1, "about:blank"

    .line 362
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 363
    :cond_5
    const-string/jumbo p3, "text/html"

    .line 365
    :cond_6
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 367
    return-void
.end method

.method loadType()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->urlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 309
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-string/jumbo v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public native nativeDestroyFrame()V
.end method

.method native nativeSslClientCert(I[B[[B)V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .parameter "url"
    .parameter "data"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->urlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 333
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_0
.end method

.method public native reload(Z)V
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .parameter "interfaceName"

    .prologue
    .line 748
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_0
    return-void
.end method

.method saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "basename"
    .parameter "autoname"

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1555
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    .line 1556
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 1558
    :cond_0
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    .line 1559
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
