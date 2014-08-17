.class public final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$ViewState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$InvokeNotifyID;,
        Landroid/webkit/WebViewCore$InvokeEventparams;,
        Landroid/webkit/WebViewCore$NotificationPermissionsData;,
        Landroid/webkit/WebViewCore$ImageSelectionCopiedData;,
        Landroid/webkit/WebViewCore$SelectionCopiedData;,
        Landroid/webkit/WebViewCore$CopyParams;,
        Landroid/webkit/WebViewCore$EditableParams;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$AutoFillData;,
        Landroid/webkit/WebViewCore$TouchHighlightData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$CursorData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static mRepaintScheduled:Z

.field private static mResumeTimerDuration:I

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mClearedContent:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Landroid/webkit/DeviceMotionService;

.field private mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private mDrawLayersIsScheduled:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mFirstLayoutForNonStandardLoad:Z

.field private mHighMemoryUsageThresholdMb:I

.field private mHighUsageDeltaMb:I

.field private mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

.field private mLowMemoryUsageThresholdMb:I

.field private mNativeClass:I

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mSplitPictureIsScheduled:Z

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    :try_start_0
    const-string/jumbo v1, "webcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 83
    const-string v1, "chromium_net"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0x7d0

    sput v1, Landroid/webkit/WebViewCore;->mResumeTimerDuration:I

    .line 1323
    const/16 v1, 0x62

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "REVEAL_SELECTION"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "REQUEST_LABEL"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "UPDATE_FRAME_CACHE_IF_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SCROLL_TEXT_INPUT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LOAD_URL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STOP_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RELOAD"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "KEY_DOWN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "KEY_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "VIEW_SIZE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GO_BACK_FORWARD"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SET_SCROLL_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RESTORE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "PAUSE_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "RESUME_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CLEAR_CACHE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CLEAR_HISTORY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "REPLACE_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "PASS_TO_JS"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SET_GLOBAL_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "SET_NETWORK_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DOC_HAS_IMAGES"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "FAKE_CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DELETE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "LISTBOX_CHOICES"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "SINGLE_LISTBOX_CHOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MESSAGE_RELAY"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "SET_BACKGROUND_COLOR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "SET_MOVE_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "SAVE_DOCUMENT_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "129"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "WEBKIT_DRAW"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "131"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "POST_URL"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "SPLIT_PICTURE_SET"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "CLEAR_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "SET_MOVE_MOUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "SET_MOVE_MOUSE_IF_LATEST"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "REQUEST_CURSOR_HREF"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "ADD_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "LOAD_DATA"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "TOUCH_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "TOUCH_EVENT"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "SET_ACTIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ON_PAUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ON_RESUME"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FREE_MEMORY"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "VALID_NODE_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "SAVE_WEBARCHIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "WEBKIT_DRAW_LAYERS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "REMOVE_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "DELKEY_SIML_FOR_COUNT"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "GET_TEXT_AROUND_CURSOR"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "SET_SELECTION_FOR_EDITING"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "DELETE_SURROUNDING_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "GET_BODY_HTML"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "GET_SLECTION_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "GET_BODY_PLAIN_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "EXEC_COMMAND"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "COPY_SAVE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "DRAW_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "GET_EMAIL_MARKUP"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "SET_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "GET_CARET_RECT"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "SET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "GET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "CAN_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "CAN_REDO"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "CLEAR_REDO_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "GET_BODY_EMPTY"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "CONTENT_SELECTION_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "RESTORE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "SAVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "CHECK_SELECTION_AT_BOUNDRY"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "MOVE_SINGLE_CURSOR_HANDLER"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "UPDATE_IM_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "SET_COMPOSING_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "SET_PAGE_ZOOM"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "GET_SLECTION_OFFSET_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "GET_STATE_IN_RICHLY_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "SHOW_ACTION_BAR"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "INSERT_IMAGE_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "RESIZE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "GET_CURRENT_FONTSIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "CHECK_SELECTED_CLOSEST_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "CHECK_END_OF_WORD_AT_POSITION"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "GET_CURRENT_FONTVALUE"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "COPY_MOVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "CLEAR_TEXT_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "CLOSEST_WORD_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "COPY_BEGIN_EXTEND_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "ADVANCE_TEXT_SELECTION_ALL"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "UNMARK_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "CHECK_SPELLING_OF_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "SET_COLOR_CHOICE"

    aput-object v3, v1, v2

    sput-object v1, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 3435
    sput-boolean v4, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void

    .line 84
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 85
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "webcore"

    const-string v2, "Unable to load native support libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 119
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 124
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 129
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 134
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 136
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 145
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 147
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 148
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 149
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 150
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 151
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 153
    new-instance v5, Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-direct {v5, p0}, Landroid/webkit/DeviceMotionAndOrientationManager;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    .line 162
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mClearedContent:Z

    .line 2984
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2985
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2986
    const/high16 v5, 0x3f80

    iput v5, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 3115
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3149
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 171
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 172
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 173
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 176
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 182
    const-class v6, Landroid/webkit/WebViewCore;

    monitor-enter v6

    .line 183
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 185
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    .local v4, t:Ljava/lang/Thread;
    const-string v5, "WebViewCoreThread"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    const-class v5, Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .end local v4           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    new-instance v5, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v5, p0, v8}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 201
    new-instance v5, Landroid/webkit/WebSettings;

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v5, v6, v7}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 204
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 206
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebStorage;->createUIHandler()V

    .line 208
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/GeolocationPermissions;->createUIHandler()V

    .line 212
    iget-object v5, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 214
    .local v2, manager:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 215
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 219
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    .line 220
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighMemoryUsageThresholdMb:I

    .line 222
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighUsageDeltaMb:I

    .line 225
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 227
    .local v1, init:Landroid/os/Message;
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void

    .line 190
    .end local v1           #init:Landroid/os/Message;
    .end local v2           #manager:Landroid/app/ActivityManager;
    .end local v3           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v5, "webcore"

    const-string v7, "Caught exception while waiting for thread creation."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v5, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendPriorityMessageToWebView()V

    return-void
.end method

.method static synthetic access$10000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$10100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateText()V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V

    return-void
.end method

.method static synthetic access$10300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelection(II)V

    return-void
.end method

.method static synthetic access$10400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeModifySelection(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500(Landroid/webkit/WebViewCore;[ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$10700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$10800(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method static synthetic access$11000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$11100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V

    return-void
.end method

.method static synthetic access$11200(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$11500(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$11600(Landroid/webkit/WebViewCore;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$11700(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeNotificationIDback(II)V

    return-void
.end method

.method static synthetic access$11800(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSplitContent(I)V

    return-void
.end method

.method static synthetic access$11902(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$12002(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mClearedContent:Z

    return p1
.end method

.method static synthetic access$12100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$12200(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12400(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V

    return-void
.end method

.method static synthetic access$12500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePluginSurfaceReady()V

    return-void
.end method

.method static synthetic access$12600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$12700(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGetTouchHighlightRects(III)V

    return-void
.end method

.method static synthetic access$12800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->useMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$12900(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeAutoFillForm(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/webkit/WebViewCore;IIIZZFI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V

    return-void
.end method

.method static synthetic access$1302(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$13100(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V

    return-void
.end method

.method static synthetic access$13200(Landroid/webkit/WebViewCore;IIFZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$13300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V

    return-void
.end method

.method static synthetic access$13400(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->applyreadability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13500(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->loadinitialJs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendColorPickerChoice(I)V

    return-void
.end method

.method static synthetic access$13702(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$1402(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDrawLayers()V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRevealSelection()V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewCore;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeClick(IIZ)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;Landroid/webkit/WebView$ViewSizeData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;IZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeUnmarkWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeCheckSpellingOfWordAtPosition(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRecalcWidthAndForceLayout()V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePause()V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResume()V

    return-void
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFreeMemory()V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionOffsetImage()V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentSelectionType()I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanUndo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanRedo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveSingleCursorHandler(II)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetComposingRegion(II)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewCore;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetPageZoom(F)V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionNone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSetComposingSelectionNone()V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V

    return-void
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeUpdateIMSelection(II)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCheckSelectedClosestWord()V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetStateInRichlyEditableText()I

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeinsertImageContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeresizeImage(II)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativegetCurrentFontSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativegetCurrentFontValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitActionBarDraw()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/webkit/WebViewCore;->nativeGetTextureGeneratorThreadID()I

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebViewCore;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeCheckEndOfWordAtPosition(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$8200(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$8300(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$8400(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$8700(Landroid/webkit/WebViewCore;IIIIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIIIZ)V

    return-void
.end method

.method static synthetic access$8800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewCore$EventHub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 73
    sget v0, Landroid/webkit/WebViewCore;->mResumeTimerDuration:I

    return v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebViewCore;I[I[I[IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(I[I[I[IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V

    return-void
.end method

.method static synthetic access$9300(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$9400(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$9500(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeStopPaintingCaret()V

    return-void
.end method

.method static synthetic access$9700(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveImageSource(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .locals 1
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4026
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 4027
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 4028
    return-object v0
.end method

.method private native applyreadability(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private calculateWindowWidth(I)I
    .locals 3
    .parameter "viewWidth"

    .prologue
    .line 3040
    move v0, p1

    .line 3041
    .local v0, width:I
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3042
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3044
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseEmailViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3046
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEmailDefaultViewPortWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3060
    :cond_0
    :goto_0
    return v0

    .line 3050
    :cond_1
    const/16 v0, 0x3d4

    goto :goto_0

    .line 3052
    :cond_2
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v1, :cond_3

    .line 3054
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 3057
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4076
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 4081
    :goto_0
    return-void

    .line 4079
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 2922
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 2923
    if-eqz p1, :cond_0

    .line 2924
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 2926
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    .prologue
    .line 3818
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3821
    :goto_0
    return-void

    .line 3819
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollLayer(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "layerID"

    .prologue
    .line 3393
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3406
    :cond_0
    :goto_0
    return-void

    .line 3396
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3397
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x98

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v1, v2, p3, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3399
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2

    .line 3400
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 3403
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(IIZZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "onlyIfImeIsShowing"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3367
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3373
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 3374
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 3388
    :cond_0
    :goto_0
    return-void

    .line 3377
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 3378
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v4, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    if-eqz p3, :cond_2

    move v3, v1

    :goto_1
    if-eqz p4, :cond_3

    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3381
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_4

    .line 3382
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    move v3, v2

    .line 3378
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 3385
    .restart local v0       #msg:Landroid/os/Message;
    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;
    .locals 3
    .parameter "pluginView"

    .prologue
    const/4 v0, 0x0

    .line 4002
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 4019
    :goto_0
    return-object v0

    .line 4006
    :cond_0
    if-nez p1, :cond_1

    .line 4007
    const-string/jumbo v1, "webcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4012
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4014
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 4015
    check-cast v1, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 4017
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 4018
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "childView"

    .prologue
    .line 4037
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 4038
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 4
    .parameter "standardLoad"

    .prologue
    const/4 v1, 0x0

    .line 3458
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 3460
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 3481
    :goto_0
    return-void

    .line 3462
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 3463
    .local v0, updateViewState:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 3467
    if-nez v0, :cond_2

    .line 3468
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 3472
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3473
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3478
    :cond_3
    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 3479
    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 3480
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    goto :goto_0

    .end local v0           #updateViewState:Z
    :cond_4
    move v0, v1

    .line 3462
    goto :goto_1
.end method

.method private formDidBlur(I)V
    .locals 3
    .parameter "nodePointer"

    .prologue
    .line 366
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3954
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v4, :cond_0

    .line 3975
    :goto_0
    return-object v3

    .line 3958
    :cond_0
    invoke-static {v3}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 3960
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3961
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3962
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a plugin APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3967
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3968
    :catch_0
    move-exception v0

    .line 3969
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3970
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3971
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedQuota()J
    .locals 8

    .prologue
    .line 3082
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v4

    .line 3083
    .local v4, webStorage:Landroid/webkit/WebStorage;
    invoke-virtual {v4}, Landroid/webkit/WebStorage;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 3085
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_1

    .line 3086
    const-wide/16 v2, 0x0

    .line 3092
    :cond_0
    return-wide v2

    .line 3088
    :cond_1
    const-wide/16 v2, 0x0

    .line 3089
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 3090
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    .prologue
    .line 3994
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3999
    :goto_0
    return-void

    .line 3997
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 244
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 248
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 250
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 252
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->createHandler()V

    .line 254
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->createHandler()V

    .line 257
    invoke-static {}, Landroid/webkit/NotificationPermissions;->getInstance()Landroid/webkit/NotificationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/NotificationPermissions;->createHandler()V

    .line 261
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 265
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 271
    :cond_0
    return-void
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 331
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "video/m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "core"

    .prologue
    .line 3316
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    .line 3944
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3945
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x88

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3946
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3947
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3949
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void

    .line 3946
    .restart local v0       #message:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .locals 9
    .parameter "evt"
    .parameter "isDown"

    .prologue
    const/4 v8, 0x0

    .line 2946
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2947
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 2949
    .local v2, unicodeChar:I
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2952
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 2955
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    .line 2958
    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    const/16 v0, 0x16

    if-gt v1, v0, :cond_2

    .line 2963
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2964
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-static {v0, v3, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2975
    :cond_1
    :goto_0
    return-void

    .line 2973
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 2929
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "webcore"

    const-string v1, " CORE loadUrl: called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2932
    return-void
.end method

.method private native loadinitialJs(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeAutoFillForm(I)V
.end method

.method private native nativeCanRedo()Z
.end method

.method private native nativeCanUndo()Z
.end method

.method private native nativeCheckEndOfWordAtPosition(II)Z
.end method

.method private native nativeCheckSelectedClosestWord()V
.end method

.method private native nativeCheckSelectionAtBoundry()I
.end method

.method private native nativeCheckSpellingOfWordAtPosition(II)Z
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClearTextSelection(II)V
.end method

.method private native nativeClick(IIZ)V
.end method

.method private native nativeCloseIdleConnections()V
.end method

.method private native nativeContentInvalidateAll()V
.end method

.method private native nativeContentSelectionType()I
.end method

.method private native nativeCopyAndSaveImage(Ljava/lang/String;)Z
.end method

.method private native nativeCopyMoveSelection(IIIZZFI)V
.end method

.method private native nativeDeleteSelection(III)V
.end method

.method private native nativeDeleteSurroundingText(II)V
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method private native nativeDumpV8Counters()V
.end method

.method private native nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFocusBoundsChanged()Z
.end method

.method private native nativeFreeMemory()V
.end method

.method private native nativeFullScreenPluginHidden(I)V
.end method

.method private native nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
.end method

.method private native nativeGetBodyEmpty()Z
.end method

.method private native nativeGetBodyHTML()Ljava/lang/String;
.end method

.method private native nativeGetBodyText()Ljava/lang/String;
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeGetCursorRect(Z)Landroid/graphics/Rect;
.end method

.method private native nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
.end method

.method private native nativeGetImageSize(II)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelectedImageRect()Landroid/graphics/Rect;
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetSelectionGranularity()I
.end method

.method private native nativeGetSelectionMultiColInfo()Z
.end method

.method private native nativeGetSelectionNone()Z
.end method

.method private native nativeGetSelectionOffset()Landroid/graphics/Point;
.end method

.method private native nativeGetSelectionOffsetImage()V
.end method

.method private native nativeGetStateInRichlyEditableText()I
.end method

.method private native nativeGetTextAroundCursor(IZ)Ljava/lang/String;
.end method

.method private static native nativeGetTextureGeneratorThreadID()I
.end method

.method private native nativeGetTouchHighlightRects(III)V
.end method

.method private native nativeHandleTouchEvent(I[I[I[IIII)Z
.end method

.method private native nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation
.end method

.method private native nativeKey(IIIZZZZ)Z
.end method

.method private native nativeModifySelection(II)Ljava/lang/String;
.end method

.method private native nativeMoveFocus(II)V
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveMouseIfLatest(IIII)V
.end method

.method private native nativeMoveSingleCursorHandler(II)V
.end method

.method private native nativeNotificationIDback(II)V
.end method

.method private native nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
.end method

.method private native nativeNotificationResponseback(Ljava/lang/String;I)V
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativePluginSurfaceReady()V
.end method

.method private native nativeProvideVisitedHistory([Ljava/lang/String;)V
.end method

.method private native nativeRecalcWidthAndForceLayout()V
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I
.end method

.method private native nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(II)Ljava/lang/String;
.end method

.method private native nativeRestorePreviousSelectionController()V
.end method

.method private native nativeResume()V
.end method

.method private native nativeRetrieveAnchorText(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(II)Ljava/lang/String;
.end method

.method private native nativeRevealSelection()V
.end method

.method private native nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeSaveSelectionController()V
.end method

.method private native nativeScrollFocusedTextInput(FI)V
.end method

.method private native nativeScrollLayer(ILandroid/graphics/Rect;Z)V
.end method

.method private native nativeSelectClosestWord(IIFZ)Z
.end method

.method private native nativeSendColorPickerChoice(I)V
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetComposingRegion(II)V
.end method

.method private native nativeSetComposingSelectionNone()V
.end method

.method private native nativeSetEditable(Z)V
.end method

.method private native nativeSetFocusControllerActive(Z)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetIsPaused(Z)V
.end method

.method private native nativeSetJsFlags(Ljava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(J)V
.end method

.method private native nativeSetPageZoom(F)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(II)V
.end method

.method private native nativeSetSelectionEditable(II)V
.end method

.method private native nativeSetSelectionEditableImage(II)V
.end method

.method private native nativeSetSelectionNone()V
.end method

.method private native nativeSetSize(IIIFIIIIZ)V
.end method

.method private native nativeSetWebTextViewOnOffStatus(Z)V
.end method

.method private native nativeSimulateDelKeyForCount(I)V
.end method

.method private native nativeSplitContent(I)V
.end method

.method private native nativeStopPaintingCaret()V
.end method

.method private native nativeTouchUp(IIIIIZ)V
.end method

.method private native nativeUndoRedoStateReset()V
.end method

.method private native nativeUnmarkWord(Ljava/lang/String;)V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private native nativeUpdateFrameCacheIfLoading()V
.end method

.method private native nativeUpdateIMSelection(II)V
.end method

.method private native nativeUpdateLayers(II)Z
.end method

.method private native nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
.end method

.method private native nativeWebTextSelectionAll(IIII)V
.end method

.method private native nativegetCurrentFontSize()I
.end method

.method private native nativegetCurrentFontValue()I
.end method

.method private native nativeinsertImageContent(Ljava/lang/String;)V
.end method

.method private native nativeresizeImage(II)V
.end method

.method private needTouchEvents(Z)V
    .locals 4
    .parameter "need"

    .prologue
    const/4 v1, 0x0

    .line 3787
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3788
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3792
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3788
    goto :goto_0
.end method

.method private openColorChooser()V
    .locals 3

    .prologue
    .line 3921
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3922
    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "openColorChooser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x95

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3925
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3927
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private openFileChooser(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "acceptType"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->openFileChooser(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 379
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 380
    const-string v7, ""

    .line 383
    .local v7, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 387
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 389
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 393
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, uriString:Ljava/lang/String;
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, v7, v8}, Landroid/webkit/JWebCoreJavaBridge;->storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #uriString:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 393
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 396
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 402
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_1
.end method

.method private native passToJs(ILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 299
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 304
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 3281
    if-eqz p0, :cond_0

    .line 3282
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3294
    :cond_0
    :goto_0
    return-void

    .line 3284
    :cond_1
    monitor-enter p0

    .line 3285
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 3286
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    monitor-exit p0

    goto :goto_0

    .line 3291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3289
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 3290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 3291
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3245
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3246
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3247
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3249
    return-void
.end method

.method private requestDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 3908
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 3909
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x91

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3911
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 3912
    .local v1, typeval:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3913
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 3914
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3915
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3917
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #typeval:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 5
    .parameter "showKeyboard"

    .prologue
    const/4 v1, 0x0

    .line 3899
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3900
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3904
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3900
    goto :goto_0
.end method

.method private requestKeyboardWithSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "textGeneration"

    .prologue
    .line 3889
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3890
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3895
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[III)V
    .locals 4
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "pointer"

    .prologue
    const/4 v3, 0x0

    .line 3869
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 3870
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->clearTextEntry()V

    .line 3871
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p4, v1, v3

    .line 3872
    .local v1, selectedArray:[I
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 3873
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 3874
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 3875
    iput-object v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 3876
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 3877
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 3878
    iput-boolean v3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 3879
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x8e

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3884
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    .end local v1           #selectedArray:[I
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[I[II)V
    .locals 3
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "pointer"

    .prologue
    .line 3851
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3852
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->clearTextEntry()V

    .line 3853
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 3854
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 3855
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 3856
    iput-object p4, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 3857
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 3858
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 3859
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 3860
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8e

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3864
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    :cond_0
    return-void
.end method

.method private restoreScale(FF)V
    .locals 1
    .parameter "scale"
    .parameter "textWrapScale"

    .prologue
    .line 3776
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3777
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 3778
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 3779
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3780
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 3783
    :cond_0
    return-void
.end method

.method private restoreState(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 3322
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 3323
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 3324
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3325
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 3324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3327
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 3328
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 3329
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 3330
    return-void
.end method

.method static resumePriority(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v2, 0x2

    .line 3254
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3255
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3258
    if-lez p0, :cond_0

    .line 3260
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3268
    :goto_0
    return-void

    .line 3265
    :cond_0
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 310
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 315
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 3297
    if-eqz p0, :cond_0

    .line 3299
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_1

    .line 3313
    :cond_0
    :goto_0
    return-void

    .line 3302
    :cond_1
    monitor-enter p0

    .line 3303
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 3304
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    monitor-exit p0

    goto :goto_0

    .line 3311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3307
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 3308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 3310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 3311
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "autoname"

    .prologue
    .line 2938
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4095
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 4096
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4098
    :cond_0
    return-void
.end method

.method private sendFindAgain()V
    .locals 2

    .prologue
    .line 3825
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3828
    :goto_0
    return-void

    .line 3826
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendNotifyProgressFinished()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 3411
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 3412
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3415
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    .line 3417
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 3420
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 3421
    return-void
.end method

.method private sendPriorityMessageToWebView()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 235
    :cond_0
    return-void
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "messageType"
    .parameter "argument"

    .prologue
    .line 3271
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3275
    :goto_0
    return-void

    .line 3274
    :cond_0
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendUpdateText()V
    .locals 2

    .prologue
    .line 3072
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3073
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3076
    :cond_0
    return-void
.end method

.method private sendUpdateTextEntry()V
    .locals 2

    .prologue
    .line 3064
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3065
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3068
    :cond_0
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3428
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3429
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3433
    :cond_0
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 4085
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 4090
    :goto_0
    return-void

    .line 4088
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setTouchHighLightRects(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "focusRingDisabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4103
    .local p1, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x83

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4105
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 4106
    return-void
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .locals 3
    .parameter "queryId"
    .parameter "preview"

    .prologue
    .line 3931
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3932
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x85

    new-instance v2, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$AutoFillData;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3936
    :cond_0
    return-void
.end method

.method private setupViewport(Z)V
    .locals 15
    .parameter "updateViewState"

    .prologue
    .line 3490
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    if-nez v11, :cond_1

    .line 3772
    :cond_0
    :goto_0
    return-void

    .line 3495
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 3498
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_3

    .line 3499
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_2

    .line 3500
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3503
    :cond_2
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_3

    .line 3504
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3509
    :cond_3
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->forceUserScalable()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3510
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 3511
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_11

    .line 3512
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_4

    .line 3513
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3516
    :cond_4
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_5

    .line 3517
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3531
    :cond_5
    :goto_1
    const/high16 v0, 0x3f80

    .line 3533
    .local v0, adjust:F
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->isDefaultZoomChanged()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 3536
    :cond_6
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v11, :cond_13

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v11

    const/high16 v12, 0x42c8

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/16 v12, 0x64

    if-eq v11, v12, :cond_13

    .line 3537
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v0

    .line 3563
    :cond_7
    :goto_2
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v11

    cmpl-float v11, v0, v11

    if-eqz v11, :cond_8

    .line 3564
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v11, v11, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x8b

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 3567
    :cond_8
    const/high16 v11, 0x42c8

    mul-float/2addr v11, v0

    float-to-int v2, v11

    .line 3569
    .local v2, defaultScale:I
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_9

    .line 3570
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3572
    :cond_9
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_a

    .line 3573
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3575
    :cond_a
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_b

    .line 3576
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3580
    :cond_b
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_c

    .line 3581
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v11, :cond_c

    .line 3582
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3585
    :cond_c
    iget-boolean v11, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v11, :cond_d

    .line 3586
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3587
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3588
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3590
    :cond_d
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v11, v12, :cond_e

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v11, :cond_e

    .line 3592
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3594
    :cond_e
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_f

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v11, v12, :cond_f

    .line 3596
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3598
    :cond_f
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v11, :cond_10

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v11, v2, :cond_10

    .line 3599
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 3603
    :cond_10
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v11, :cond_15

    if-nez p1, :cond_15

    .line 3605
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 3606
    new-instance v7, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v7}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    .line 3607
    .local v7, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 3608
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 3609
    iput v0, v7, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 3611
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 3613
    const/4 v11, 0x0

    iput v11, v7, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 3614
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 3615
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v11, v11, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x6d

    invoke-static {v11, v12, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3521
    .end local v0           #adjust:F
    .end local v2           #defaultScale:I
    .end local v7           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :cond_11
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_12

    .line 3522
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    const/16 v12, 0x32

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3524
    :cond_12
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_5

    .line 3525
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    const/16 v12, 0xc8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_1

    .line 3540
    .restart local v0       #adjust:F
    :cond_13
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v11, :cond_7

    .line 3541
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3543
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/String;

    const-string v12, "com.android.browser"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3544
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3545
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3546
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    goto/16 :goto_2

    .line 3550
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_14
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_7

    .line 3551
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_2

    .line 3624
    .restart local v2       #defaultScale:I
    :cond_15
    iget v8, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 3625
    .local v8, viewportWidth:I
    if-nez v8, :cond_17

    .line 3629
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v9

    .line 3630
    .local v9, webViewWidth:I
    int-to-float v11, v9

    div-float/2addr v11, v0

    float-to-int v8, v11

    .line 3631
    if-nez v8, :cond_16

    .line 3639
    :cond_16
    :goto_3
    new-instance v11, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v11}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    iput-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3640
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 3641
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 3642
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 3643
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 3644
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 3645
    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    if-nez v11, :cond_18

    iget v11, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    if-nez v11, :cond_18

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v11, :cond_18

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v11}, Landroid/webkit/BrowserFrame;->getShouldStartScrolledRight()Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, v12, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 3650
    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_19

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v12, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 3651
    iget-boolean v11, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v11, :cond_1b

    .line 3652
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    .line 3653
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 3654
    iget v11, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1a

    .line 3655
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3678
    :goto_6
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v11, v11, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v11, :cond_1f

    .line 3684
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3687
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3688
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v11, v11, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3689
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3692
    iget v11, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3693
    const/high16 v11, -0x4080

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3694
    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3695
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3702
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v12, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkit/WebViewCore$EventHub;->access$14000(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3703
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v12, 0x0

    const/16 v13, 0x69

    invoke-static {v12, v13, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v11, v12}, Landroid/webkit/WebViewCore$EventHub;->access$13800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3637
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v9           #webViewWidth:I
    :cond_17
    int-to-float v11, v8

    iget v12, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9       #webViewWidth:I
    goto/16 :goto_3

    .line 3645
    :cond_18
    const/4 v11, 0x0

    goto :goto_4

    .line 3650
    :cond_19
    const/4 v11, 0x0

    goto :goto_5

    .line 3657
    :cond_1a
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    goto :goto_6

    .line 3660
    :cond_1b
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_1c

    .line 3661
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v13, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v13, v13

    const/high16 v14, 0x42c8

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto :goto_6

    .line 3663
    :cond_1c
    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v11, :cond_1d

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v11, v9, :cond_1d

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 3665
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    int-to-float v13, v9

    iget v14, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3668
    :cond_1d
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3669
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 3671
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3673
    :cond_1e
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3706
    :cond_1f
    if-nez v8, :cond_20

    .line 3709
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebView;->mLastWidthSent:I

    goto/16 :goto_0

    .line 3711
    :cond_20
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3715
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 3716
    .local v5, tentativeScale:F
    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-nez v11, :cond_23

    .line 3723
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3724
    int-to-float v11, v9

    div-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 3725
    .local v6, tentativeViewWidth:I
    invoke-direct {p0, v6}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v10

    .line 3729
    .local v10, windowWidth:I
    int-to-float v11, v9

    int-to-float v12, v10

    div-float/2addr v11, v12

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3730
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v11

    if-nez v11, :cond_21

    .line 3732
    iget v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3734
    :cond_21
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 3736
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getReadingLevelScale()F

    move-result v12

    iput v12, v11, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3751
    .end local v6           #tentativeViewWidth:I
    .end local v10           #windowWidth:I
    :cond_22
    :goto_7
    int-to-float v11, v9

    iget v12, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3757
    iget v11, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v11, :cond_24

    iget-object v11, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    :goto_8
    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3760
    int-to-float v11, v9

    iget-object v12, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3762
    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3763
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3766
    iget-object v11, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v12, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkit/WebViewCore$EventHub;->access$14000(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3769
    invoke-direct {p0, v1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    goto/16 :goto_0

    .line 3741
    :cond_23
    iput v5, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    goto :goto_7

    .line 3757
    :cond_24
    iget v11, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    int-to-float v11, v11

    iget v12, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    int-to-float v12, v8

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    goto :goto_8
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;II)V
    .locals 3
    .parameter "childView"
    .parameter "orientation"
    .parameter "npp"

    .prologue
    .line 3981
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3990
    :goto_0
    return-void

    .line 3985
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3986
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3987
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3988
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3989
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"

    .prologue
    .line 4057
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 4058
    new-instance v0, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 4059
    .local v0, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 4060
    iput p2, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 4061
    iput p3, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 4062
    iput p4, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 4063
    iput p5, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 4064
    iput p6, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 4065
    iput p7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 4066
    iput p8, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 4067
    iput p9, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 4068
    iput p10, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 4069
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4072
    .end local v0           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_0
    return-void
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4033
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 4034
    return-void
.end method

.method private updateTextSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"

    .prologue
    .line 3809
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3814
    :cond_0
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .locals 3
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 3797
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3798
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3801
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3802
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3804
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1

    .prologue
    .line 3486
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 3487
    return-void
.end method

.method private useMockDeviceOrientation()V
    .locals 1

    .prologue
    .line 4109
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Landroid/webkit/DeviceMotionAndOrientationManager;->useMock()V

    .line 4110
    return-void
.end method

.method private viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V
    .locals 14
    .parameter "data"

    .prologue
    .line 2990
    iget v5, p1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2991
    .local v5, w:I
    iget v10, p1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2992
    .local v10, h:I
    iget v3, p1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2993
    .local v3, textwrapWidth:I
    iget v4, p1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2998
    .local v4, scale:F
    if-nez v5, :cond_1

    .line 2999
    const-string/jumbo v0, "webcore"

    const-string/jumbo v6, "skip viewSizeChanged as w is 0"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_0
    :goto_0
    return-void

    .line 3002
    :cond_1
    invoke-direct {p0, v5}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v1

    .line 3003
    .local v1, width:I
    move v2, v10

    .line 3004
    .local v2, height:I
    if-eq v1, v5, :cond_2

    .line 3005
    iget v11, p1, Landroid/webkit/WebView$ViewSizeData;->mHeightWidthRatio:F

    .line 3006
    .local v11, heightWidthRatio:F
    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_5

    move v13, v11

    .line 3007
    .local v13, ratio:F
    :goto_1
    int-to-float v0, v1

    mul-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3009
    .end local v11           #heightWidthRatio:F
    .end local v13           #ratio:F
    :cond_2
    iget v0, p1, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    if-lez v0, :cond_6

    iget v6, p1, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    :goto_2
    iget v7, p1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    iget v8, p1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iget-boolean v9, p1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFIIIIZ)V

    .line 3013
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v0, :cond_7

    const/4 v12, 0x1

    .line 3014
    .local v12, needInvalidate:Z
    :goto_3
    iput v5, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 3015
    iput v10, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 3016
    iput v4, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 3017
    if-eqz v12, :cond_3

    .line 3021
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 3023
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v6, 0x0

    const/16 v7, 0x75

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v6}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3026
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v6

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_4

    .line 3027
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    .line 3031
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isComposerImageTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3033
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitRotationActionOnImage()V

    goto :goto_0

    .line 3006
    .end local v12           #needInvalidate:Z
    .restart local v11       #heightWidthRatio:F
    :cond_5
    int-to-float v0, v10

    int-to-float v6, v5

    div-float v13, v0, v6

    goto :goto_1

    .end local v11           #heightWidthRatio:F
    :cond_6
    move v6, v10

    .line 3009
    goto :goto_2

    .line 3013
    :cond_7
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private webkitActionBarDraw()V
    .locals 3

    .prologue
    .line 1289
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1293
    :cond_0
    return-void
.end method

.method private webkitDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3171
    iput-boolean v3, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 3172
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 3174
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    iget-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 3175
    iget v1, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    if-nez v1, :cond_1

    .line 3176
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3178
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3187
    :cond_0
    :goto_0
    return-void

    .line 3184
    :cond_1
    iput-object v0, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 3185
    iput-boolean v3, p0, Landroid/webkit/WebViewCore;->mClearedContent:Z

    .line 3186
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V

    goto :goto_0
.end method

.method private webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 6
    .parameter "draw"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3190
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 3191
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged()Z

    move-result v0

    iput-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 3192
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 3193
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3194
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseEmailViewPort()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3196
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEmailDefaultViewPortWidth()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 3210
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    if-eqz v0, :cond_1

    .line 3211
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3214
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v0, :cond_2

    .line 3215
    iput-boolean v5, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    .line 3216
    iput-boolean v4, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 3220
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v5, v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_3

    .line 3221
    invoke-direct {p0, v4}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    .line 3226
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3229
    :cond_4
    return-void

    .line 3196
    :cond_5
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 3203
    :cond_7
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ne v0, v3, :cond_8

    const/16 v0, 0x3d4

    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_9

    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_2

    :cond_9
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_2
.end method

.method private webkitDrawLayers()V
    .locals 3

    .prologue
    const/16 v2, 0x75

    .line 3154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 3155
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mClearedContent:Z

    if-ne v0, v1, :cond_1

    .line 3156
    :cond_0
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3157
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    .line 3168
    :goto_0
    return-void

    .line 3161
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    iget v1, v1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebViewCore;->nativeUpdateLayers(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3163
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    .line 3165
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3166
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitRotationActionOnImage()V
    .locals 3

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x94

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1300
    :cond_0
    return-void
.end method

.method private webkitSelectionControlDraw(I)V
    .locals 11
    .parameter "selectionController"

    .prologue
    const/4 v10, 0x0

    const/16 v2, 0xd3

    const/16 v9, 0x8c

    const/4 v8, 0x0

    .line 1218
    new-instance v6, Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-direct {v6}, Landroid/webkit/WebViewCore$SelectionCopiedData;-><init>()V

    .line 1233
    .local v6, Data:Landroid/webkit/WebViewCore$SelectionCopiedData;
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkit/WebViewCore$EventHub;->access$1100(Landroid/webkit/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$1200(Landroid/webkit/WebViewCore$EventHub;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$1200(Landroid/webkit/WebViewCore$EventHub;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v10, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    iget-object v1, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v2, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v3, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v4, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewCore;->nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1242
    const-string/jumbo v0, "webcore"

    const-string/jumbo v1, "webkitSelctionControlDraw Selection unable to select"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1247
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionGranularity()I

    move-result v0

    iput v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    .line 1248
    iput p1, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    .line 1250
    iget v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-nez v0, :cond_4

    .line 1251
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionMultiColInfo()Z

    move-result v0

    iput-boolean v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->isMulticol:Z

    .line 1257
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1271
    .local v7, regionRect:Landroid/graphics/Rect;
    iget-object v0, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1278
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_3

    .line 1279
    invoke-direct {p0, v8}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    .line 1283
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1253
    .end local v7           #regionRect:Landroid/graphics/Rect;
    :cond_4
    iput-boolean v8, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->isMulticol:Z

    goto :goto_1
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 349
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 350
    return-void
.end method

.method contentDraw()V
    .locals 3

    .prologue
    .line 3338
    monitor-enter p0

    .line 3339
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 3341
    :cond_0
    monitor-exit p0

    .line 3353
    :goto_0
    return-void

    .line 3345
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3346
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 3352
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3349
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_4

    monitor-exit p0

    goto :goto_0

    .line 3350
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 3351
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3352
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 2905
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v1

    .line 2910
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x1

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$1502(Landroid/webkit/WebViewCore$EventHub;Z)Z

    .line 2911
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2913
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$14200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2914
    monitor-exit v1

    .line 2915
    return-void

    .line 2914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 616
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 619
    .local v0, message:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 620
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"

    .prologue
    .line 420
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 427
    return-void
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 562
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 470
    return-void
.end method

.method declared-synchronized getBrowserFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3939
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Landroid/webkit/DeviceMotionService;
    .locals 3

    .prologue
    .line 4119
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    if-nez v0, :cond_0

    .line 4120
    new-instance v0, Landroid/webkit/DeviceMotionService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceMotionService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    .line 4123
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Landroid/webkit/DeviceOrientationService;
    .locals 3

    .prologue
    .line 4127
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    if-nez v0, :cond_0

    .line 4128
    new-instance v0, Landroid/webkit/DeviceOrientationService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceOrientationService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    .line 4131
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    return-object v0
.end method

.method declared-synchronized getSelectedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3233
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectedText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3234
    .local v0, str:Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 3233
    .end local v0           #str:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 3447
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method hasMessages(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 2893
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$1100(Landroid/webkit/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 281
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 282
    return-void
.end method

.method public isEditableSupport()Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 357
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 570
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 581
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 592
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method layersDraw()V
    .locals 3

    .prologue
    .line 3357
    monitor-enter p0

    .line 3358
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 3362
    :goto_0
    return-void

    .line 3359
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 3360
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x94

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3361
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native nativeGetWebFeedLinks()[Landroid/webkit/WebFeedLink;
.end method

.method native nativeRequiresSmartFit()Z
.end method

.method native nativeResumeJS()V
.end method

.method native nativeSuspendJS()V
.end method

.method protected notificationManagerCancel(I)V
    .locals 1
    .parameter "notificationID"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onNotificationManagerCancelPrompt(I)V

    .line 541
    return-void
.end method

.method protected notificationManagershow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "iconUrl"
    .parameter "titleStr"
    .parameter "bodyStr"
    .parameter "counter"

    .prologue
    .line 508
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v5, Landroid/webkit/WebViewCore$6;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$6;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onNotificationManagershowPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/NotificationPermissions$Callback;)V

    .line 528
    return-void
.end method

.method protected notificationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onNotificationPermissionsHidePrompt()V

    .line 553
    return-void
.end method

.method protected notificationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 483
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$5;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$5;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/NotificationPermissions$Callback;)V

    .line 495
    return-void
.end method

.method protected populateVisitedLinks()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/webkit/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    .line 449
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 450
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .parameter "spaceNeeded"

    .prologue
    .line 435
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 441
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 2897
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$14100(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2898
    return-void
.end method

.method removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2889
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$14000(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2890
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 2979
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 2854
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2855
    return-void
.end method

.method sendMessage(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2863
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2864
    return-void
.end method

.method sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2867
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2868
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2876
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2877
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 2872
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2873
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2858
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2859
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2850
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2851
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2880
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$13800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2882
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2885
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$13900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2886
    return-void
.end method

.method protected setInstallableWebApp()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->setInstallableWebApp()V

    .line 610
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 4114
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->setMockOrientation(ZDZDZD)V

    .line 4116
    return-void
.end method

.method protected setNavType(I)V
    .locals 3
    .parameter "navType"

    .prologue
    .line 625
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x92

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 627
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 628
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method declared-synchronized setWebTextViewOnOffStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3240
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetWebTextViewOnOffStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3241
    monitor-exit p0

    return-void

    .line 3240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 3441
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 3442
    return-void
.end method

.method protected skipNewPictureMsg()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method splitContent(I)V
    .locals 2
    .parameter "content"

    .prologue
    .line 3097
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v0, :cond_0

    .line 3098
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 3099
    const/16 v0, 0x85

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3101
    :cond_0
    return-void
.end method

.method stopLoading()V
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 2838
    :cond_0
    return-void
.end method
