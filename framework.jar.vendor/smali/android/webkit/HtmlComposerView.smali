.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$HCWHandler;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkit/HtmlComposerView$MenuHandler;,
        Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x102002f

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x102002e

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static final UPDATE_RICHTEXT_TOOLBAR:I = 0x501

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field bitmap:Landroid/graphics/Bitmap;

.field private bm_height:I

.field private bm_width:I

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field private ignoreMaxLength:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field private isInComposingState:Z

.field private isSelectionset:Z

.field private isViewInFocus:Z

.field private lb_height:I

.field private lb_width:I

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private lm_height:I

.field private lm_width:I

.field private lt_height:I

.field private lt_width:I

.field mAccumlationLength:I

.field private mAdd:I

.field private mAltKeyIsPressed:Z

.field mCurHtmlLength:I

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field public mMaxHtmlLength:I

.field mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mPrivateOptions:Ljava/lang/String;

.field private mQwertyInput:Landroid/text/method/QwertyKeyListener;

.field private mRHIResource:I

.field private mRemove:I

.field private mResizingHoverImage:Landroid/widget/ImageView;

.field public mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShiftKeyIsPressed:Z

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field private mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mXCenter:I

.field private mYCenter:I

.field private mZoomFactor:F

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field rb_height:I

.field rb_width:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private rm_height:I

.field private rm_width:I

.field private rt_height:I

.field private rt_width:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public strTexttoSpeech:Ljava/lang/String;

.field public textSelected:Ljava/lang/String;

.field tm_height:I

.field tm_width:I

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 88
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 90
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 91
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 92
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 93
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 96
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 97
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 98
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 99
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 101
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 102
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 103
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 104
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 105
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 106
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 107
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 108
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 110
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 111
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 118
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 119
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 120
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 121
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 122
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 124
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 125
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 127
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 130
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 131
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 132
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 133
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 138
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 139
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 163
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 165
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 166
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 169
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 174
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 179
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 184
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 186
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 187
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 189
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 191
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 192
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 193
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 194
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 195
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 197
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 201
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 205
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 209
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 210
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 211
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 213
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 214
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 215
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 216
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 218
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 219
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 220
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 221
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 225
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 226
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 227
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 228
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 230
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 401
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 402
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 403
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 283
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 284
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 288
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 90
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 91
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 92
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 93
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 96
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 97
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 98
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 99
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 101
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 102
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 103
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 104
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 105
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 106
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 107
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 108
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 110
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 111
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 118
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 119
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 120
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 121
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 122
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 124
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 125
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 127
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 130
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 131
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 132
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 133
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 138
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 139
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 163
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 165
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 166
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 169
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 174
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 179
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 184
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 186
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 187
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 189
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 191
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 192
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 193
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 194
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 195
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 197
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 201
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 205
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 209
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 210
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 211
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 213
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 214
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 215
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 216
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 218
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 219
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 220
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 221
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 225
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 226
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 227
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 228
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 230
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 401
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 402
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 403
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 289
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 90
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 91
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 92
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 93
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 96
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 97
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 98
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 99
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 101
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 102
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 103
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 104
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 105
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 106
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 107
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 108
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 110
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 111
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 118
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 119
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 120
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 121
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 122
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 124
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 125
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 127
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 130
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 131
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 132
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 133
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 138
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 139
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 163
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 165
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 166
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 169
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 174
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 179
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 184
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 186
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 187
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 189
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 191
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 192
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 193
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 194
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 195
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 197
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 201
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 205
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 209
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 210
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 211
    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 213
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 214
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 215
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 216
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 218
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 219
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 220
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 221
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 225
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 226
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 227
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 228
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 230
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 401
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 402
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 403
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 294
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 88
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 90
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 91
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 92
    const v1, 0x20000ff

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 93
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 95
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 96
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 97
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 98
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 99
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 101
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 102
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 103
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 104
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 105
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 106
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 107
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 108
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 109
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 110
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 111
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 112
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 113
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 114
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 115
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 118
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 119
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 120
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 121
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 122
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 124
    iput v5, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 125
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 127
    iput v5, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 130
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 131
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 132
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 133
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 138
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 139
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 163
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 165
    iput v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 166
    iput v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 169
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 174
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 179
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 184
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 186
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 187
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 189
    const/16 v1, 0x14

    iput v1, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 191
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 192
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 193
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 194
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 195
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 197
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 201
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 205
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 209
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 210
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 211
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 213
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 214
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 215
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 216
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 218
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 219
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 220
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 221
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 225
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 226
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 227
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 228
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 230
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 401
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 402
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 403
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 299
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/16 v9, 0x50

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 306
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 307
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 308
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 309
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 312
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 313
    .local v6, metric:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 315
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 317
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 318
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 320
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 321
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->XFAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 330
    :cond_0
    :goto_0
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 333
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 336
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v8, v0}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 337
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 338
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 339
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 340
    new-instance v0, Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$HCWHandler;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    .line 341
    invoke-super {p0, p0}, Landroid/webkit/WebView;->isVisibleCursorhandlerListener(Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;)V

    .line 344
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->setHoverPopupType(I)V

    .line 345
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 346
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 347
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v1, Landroid/webkit/HtmlComposerView$1;

    invoke-direct {v1, p0}, Landroid/webkit/HtmlComposerView$1;-><init>(Landroid/webkit/HtmlComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 379
    return-void

    .line 322
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 324
    :cond_2
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 325
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 326
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/HtmlComposerView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$202(Landroid/webkit/HtmlComposerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$302(Landroid/webkit/HtmlComposerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    return p1
.end method

.method static synthetic access$402(Landroid/webkit/HtmlComposerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/HtmlComposerView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    return v0
.end method

.method private canSelectAll()Z
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3103
    const/4 v0, 0x1

    .line 3106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v5, 0x0

    .line 3112
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3113
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3115
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 3116
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 3117
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 3118
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3127
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 3128
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3132
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 3120
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 3121
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3123
    :cond_1
    if-eqz v4, :cond_2

    .line 3124
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3126
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 3130
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 3131
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 1861
    new-instance v0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 1864
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 1865
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 1868
    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3137
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3140
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 3142
    .local v1, showIme:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3143
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3145
    :cond_0
    return-void

    .end local v1           #showIme:Z
    :cond_1
    move v1, v2

    .line 3140
    goto :goto_0
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    .prologue
    .line 3620
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    .prologue
    .line 3612
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    .prologue
    .line 3616
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 3148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3152
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3154
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3155
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3158
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3160
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3176
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3177
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3178
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v2

    .line 3162
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3165
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 3166
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 3167
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3170
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v10, 0x104070e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v10, 0x104070f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 3171
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "rect"

    .prologue
    .line 3184
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3194
    :cond_0
    :goto_0
    return-void

    .line 3186
    :cond_1
    new-instance v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 3187
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 3188
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 3189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 3191
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3192
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 2
    .parameter "rect"
    .parameter "imageoutLinePath"
    .parameter "imagehandlesPath"

    .prologue
    .line 3200
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3213
    :cond_0
    :goto_0
    return-void

    .line 3202
    :cond_1
    new-instance v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 3203
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 3204
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 3205
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 3207
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 3208
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 3210
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3211
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkit/HtmlComposerView;
    .locals 1

    .prologue
    .line 3217
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 3987
    const/4 v0, 0x0

    .line 3988
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 3989
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3990
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3991
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3992
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3993
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3995
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3996
    return-void
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3838
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3839
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3840
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3841
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3842
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3843
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3845
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3871
    :cond_0
    :goto_0
    return-void

    .line 3847
    :cond_1
    if-gez v2, :cond_2

    .line 3848
    const/4 v4, -0x1

    .line 3849
    :cond_2
    if-gez v3, :cond_3

    .line 3850
    const/4 v5, -0x1

    .line 3851
    :cond_3
    if-eq v4, v5, :cond_0

    .line 3854
    if-ge v0, v1, :cond_4

    .line 3855
    mul-int v3, v0, v5

    .line 3862
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3863
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3866
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3867
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3868
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3869
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3870
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3858
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 4024
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 4025
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 4026
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4027
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4028
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4029
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4030
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4031
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4033
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3874
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3875
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3876
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3877
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3878
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3879
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3881
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3907
    :cond_0
    :goto_0
    return-void

    .line 3883
    :cond_1
    if-gez v2, :cond_2

    .line 3884
    const/4 v4, -0x1

    .line 3885
    :cond_2
    if-gez v3, :cond_3

    .line 3886
    const/4 v5, -0x1

    .line 3887
    :cond_3
    if-ne v4, v5, :cond_0

    .line 3890
    if-ge v0, v1, :cond_4

    .line 3891
    mul-int v3, v0, v5

    .line 3898
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3899
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3902
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3903
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3904
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3905
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3906
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3894
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleNavKeys(I)V
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 3221
    packed-switch p1, :pswitch_data_0

    .line 3317
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    .line 3319
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 3321
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3322
    return-void

    .line 3223
    :pswitch_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_2

    .line 3224
    const-string v2, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3226
    .local v1, selectionType:I
    if-ne v5, v1, :cond_1

    .line 3227
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 3228
    .local v0, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3229
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3230
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3231
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3232
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 3233
    .end local v0           #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_1
    if-nez v1, :cond_0

    .line 3234
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_0

    .line 3238
    .end local v1           #selectionType:I
    :cond_2
    const-string v2, "MoveLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3241
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_0

    .line 3246
    :pswitch_1
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_4

    .line 3247
    const-string v2, "MoveRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3249
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_3

    .line 3250
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 3251
    .restart local v0       #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3252
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3253
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3254
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3255
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 3256
    .end local v0           #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_3
    if-nez v1, :cond_0

    .line 3257
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3261
    .end local v1           #selectionType:I
    :cond_4
    const-string v2, "MoveRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3264
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3269
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_6

    .line 3270
    const-string v2, "MoveUpAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3272
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_5

    .line 3273
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 3274
    .restart local v0       #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3275
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3276
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3277
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3278
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 3279
    .end local v0           #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_5
    if-nez v1, :cond_0

    .line 3280
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3284
    .end local v1           #selectionType:I
    :cond_6
    const-string v2, "MoveUp"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3286
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3287
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3292
    :pswitch_3
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_8

    .line 3293
    const-string v2, "MoveDownAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3295
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_7

    .line 3296
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 3297
    .restart local v0       #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3298
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3299
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3300
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3301
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 3302
    .end local v0           #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_7
    if-nez v1, :cond_0

    .line 3303
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3307
    .end local v1           #selectionType:I
    :cond_8
    const-string v2, "MoveDown"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3310
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3221
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3910
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3911
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3912
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3913
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3914
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3915
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3917
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3945
    :cond_0
    :goto_0
    return-void

    .line 3919
    :cond_1
    if-gez v2, :cond_2

    .line 3920
    const/4 v4, -0x1

    .line 3921
    :cond_2
    if-gez v3, :cond_3

    .line 3922
    const/4 v5, -0x1

    .line 3923
    :cond_3
    if-ne v4, v5, :cond_0

    .line 3926
    if-ge v0, v1, :cond_4

    .line 3927
    mul-int v3, v0, v5

    .line 3934
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3935
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3939
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3940
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3941
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3942
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3943
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3930
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleRightMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 4012
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 4013
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 4014
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4015
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4016
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4017
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4018
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4019
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4021
    return-void
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 3948
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 3949
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 3950
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3951
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3952
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 3953
    .local v4, signX:I
    const/4 v5, 0x1

    .line 3955
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 3983
    :cond_0
    :goto_0
    return-void

    .line 3957
    :cond_1
    if-gez v2, :cond_2

    .line 3958
    const/4 v4, -0x1

    .line 3959
    :cond_2
    if-gez v3, :cond_3

    .line 3960
    const/4 v5, -0x1

    .line 3961
    :cond_3
    if-eq v4, v5, :cond_0

    .line 3964
    if-ge v0, v1, :cond_4

    .line 3965
    mul-int v3, v0, v5

    .line 3972
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3973
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3977
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3978
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3979
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3980
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3981
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 3968
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleTopMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 3999
    const/4 v0, 0x0

    .line 4000
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 4001
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4002
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4003
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4004
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4005
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4008
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4009
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 3629
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3631
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3637
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3638
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3639
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 3640
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3642
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3643
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3644
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3646
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3649
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3650
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3651
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3652
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 3653
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3655
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3656
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3657
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3659
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3662
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3663
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3664
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3665
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 3666
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3667
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3668
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3669
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3671
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3674
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3675
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3676
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3677
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 3679
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3682
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3683
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3684
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3685
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 3686
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3687
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3688
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3689
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3691
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3694
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3695
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3696
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3697
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 3698
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3700
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3701
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3702
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3704
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3707
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3708
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3709
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3710
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 3711
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3712
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3713
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3714
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3716
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3719
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3720
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3721
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3722
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 3723
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3724
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3725
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 3726
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 3727
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3730
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3731
    return-void

    .line 3634
    :cond_8
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 3734
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_0

    .line 3736
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 3737
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 3740
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_1

    .line 3742
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 3743
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3744
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3747
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_2

    .line 3749
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 3750
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3751
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3754
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_3

    .line 3756
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 3757
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3758
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3761
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_4

    .line 3763
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    .line 3764
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3765
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3768
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_5

    .line 3770
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    .line 3771
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3772
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3775
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_6

    .line 3777
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    .line 3778
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3779
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3782
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_7

    .line 3784
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    .line 3785
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3786
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3789
    :cond_7
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_9

    .line 3790
    :cond_8
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3792
    :cond_9
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_b

    .line 3793
    :cond_a
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 3794
    :cond_b
    return-void
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3797
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 3798
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 3799
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 3801
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_2

    .line 3804
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 3805
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 3806
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 3807
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 3808
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 3809
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 3810
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 3812
    iget v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    .line 3813
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3814
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3815
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3816
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3819
    :cond_1
    invoke-direct {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 3820
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 3823
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3824
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3827
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3828
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 3829
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 3830
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 3831
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 3834
    :cond_2
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 1871
    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1875
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 1877
    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    .prologue
    .line 3325
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3326
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3327
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3329
    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 3332
    if-eqz p1, :cond_0

    .line 3333
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3334
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3336
    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 3339
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3340
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3341
    :cond_0
    return-void
.end method

.method private isBottomMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4186
    move v0, p1

    .line 4187
    .local v0, positionX:I
    move v1, p2

    .line 4189
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4191
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4192
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4197
    :goto_0
    return v3

    .line 4195
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4197
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoverPointWithinIconAreaForResizing(II)Z
    .locals 12
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const v11, 0x108058e

    const/4 v4, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 3352
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v6, :cond_3

    .line 3353
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 3354
    .local v1, re:Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3356
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing getX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_0
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing outLinePath re.left re.top re.right re.bottom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    :cond_1
    const/16 v0, 0x28

    .line 3360
    .local v0, delta:I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v2, v6

    .line 3361
    .local v2, xCenter:I
    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v3, v6

    .line 3363
    .local v3, yCenter:I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 3365
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_2
    const v4, 0x1080590

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3367
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3368
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    :goto_0
    move v4, v5

    .line 3421
    .end local v0           #delta:I
    .end local v1           #re:Landroid/graphics/RectF;
    .end local v2           #xCenter:I
    .end local v3           #yCenter:I
    :cond_3
    :goto_1
    return v4

    .line 3369
    .restart local v0       #delta:I
    .restart local v1       #re:Landroid/graphics/RectF;
    .restart local v2       #xCenter:I
    .restart local v3       #yCenter:I
    :cond_4
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    .line 3371
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    :cond_5
    const v4, 0x108058f

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3373
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3374
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 3375
    :cond_6
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 3377
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    :cond_7
    const v4, 0x108058f

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3379
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3380
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 3381
    :cond_8
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    .line 3383
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    :cond_9
    const v4, 0x1080590

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3385
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3386
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3387
    :cond_a
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_c

    add-int v6, v2, v0

    if-lt v6, p1, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_c

    .line 3389
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Top-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    :cond_b
    iput v11, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3391
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3392
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3393
    :cond_c
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_e

    add-int v6, v2, v0

    if-lt v6, p1, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    .line 3395
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Bottom-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    :cond_d
    iput v11, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3397
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3398
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3399
    :cond_e
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_10

    add-int v6, v3, v0

    if-lt v6, p2, :cond_10

    .line 3401
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_f
    const v4, 0x1080591

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3403
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3404
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3405
    :cond_10
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_12

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_12

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_12

    add-int v6, v3, v0

    if-lt v6, p2, :cond_12

    .line 3407
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    :cond_11
    const v4, 0x1080591

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3409
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3410
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3412
    :cond_12
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3413
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3414
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_1
.end method

.method private isInsertionAllowed(I)Z
    .locals 5
    .parameter "insertionLength"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3426
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v3, :cond_1

    .line 3437
    :cond_0
    :goto_0
    return v1

    .line 3428
    :cond_1
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x3

    .line 3429
    .local v0, avoidLength:I
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 3431
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    if-lt v3, v0, :cond_0

    .line 3435
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 3436
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 3437
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    add-int/2addr v3, p1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4201
    move v0, p1

    .line 4202
    .local v0, positionX:I
    move v1, p2

    .line 4204
    .local v1, positionY:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4206
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4207
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    :cond_0
    const/4 v2, 0x1

    .line 4218
    :goto_0
    return v2

    .line 4213
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 4214
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4115
    move v0, p1

    .line 4116
    .local v0, positionX:I
    move v1, p2

    .line 4118
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4120
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4122
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4123
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    :cond_0
    const/4 v3, 0x1

    .line 4135
    :goto_0
    return v3

    .line 4129
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4131
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 4132
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4155
    move v0, p1

    .line 4156
    .local v0, positionX:I
    move v1, p2

    .line 4158
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4159
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4161
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4166
    :goto_0
    return v3

    .line 4164
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4166
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4087
    move v0, p1

    .line 4088
    .local v0, positionX:I
    move v1, p2

    .line 4090
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4092
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4094
    const-string v3, "HtmlComposerView"

    const-string v4, "Right top and outline inteersecting so disable outlineRect region as user intention is to resize not move"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4098
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 4099
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    :cond_1
    const/4 v3, 0x1

    .line 4111
    :goto_0
    return v3

    .line 4105
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4107
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 4108
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTopMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4170
    move v0, p1

    .line 4171
    .local v0, positionX:I
    move v1, p2

    .line 4173
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4175
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4177
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4182
    :goto_0
    return v3

    .line 4180
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4182
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4064
    move v0, p1

    .line 4065
    .local v0, positionX:I
    move v1, p2

    .line 4067
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4068
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4070
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4071
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    :cond_0
    const/4 v3, 0x1

    .line 4083
    :goto_0
    return v3

    .line 4077
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4079
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 4080
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4139
    move v0, p1

    .line 4140
    .local v0, positionX:I
    move v1, p2

    .line 4142
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4144
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4146
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4151
    :goto_0
    return v3

    .line 4149
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4151
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4040
    move v0, p1

    .line 4041
    .local v0, positionX:I
    move v1, p2

    .line 4043
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4045
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4047
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4048
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :cond_0
    const/4 v3, 0x1

    .line 4060
    :goto_0
    return v3

    .line 4054
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4056
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 4057
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    .prologue
    .line 4224
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4225
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4226
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    .prologue
    .line 4229
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4230
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4231
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4233
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4234
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4236
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4237
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4239
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4240
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4242
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4243
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4245
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4246
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4248
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4249
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4251
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4252
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4253
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3442
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3444
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3445
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3446
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3447
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3449
    :cond_0
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3602
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_0

    .line 3604
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 3605
    .local v0, selectedImageRect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_0

    .line 3606
    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 3608
    .end local v0           #selectedImageRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private sendEventToUpdateToolbar()V
    .locals 2

    .prologue
    .line 3463
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3464
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x501

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3465
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3466
    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 3452
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3460
    :cond_0
    :goto_0
    return-void

    .line 3454
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3456
    if-eqz p1, :cond_2

    .line 3457
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 3459
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    .prologue
    .line 4258
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftTopHandle()V

    .line 4259
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightTopHandle()V

    .line 4260
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftBottomHandle()V

    .line 4261
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightBottomHandle()V

    .line 4262
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateTopMiddleHandle()V

    .line 4263
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftMiddleHandle()V

    .line 4264
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateBottomMiddleHandle()V

    .line 4265
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightMiddleHandle()V

    .line 4266
    return-void
.end method

.method private updateBottomMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 4374
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4375
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4376
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4377
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4378
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4383
    :goto_0
    return-void

    .line 4381
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3476
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 3477
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 3479
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 3494
    :cond_0
    :goto_0
    return-void

    .line 3482
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 3483
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 3484
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 3485
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 3486
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 3487
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 3489
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3492
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3493
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    .prologue
    .line 4302
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4304
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4305
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4306
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4307
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4312
    :goto_0
    return-void

    .line 4310
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 4370
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 4371
    return-void
.end method

.method private updateLeftTopHandle()V
    .locals 5

    .prologue
    .line 4297
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 4298
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v3, 0x1

    .line 4315
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    .line 4316
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4317
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4319
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    .line 4320
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4321
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4323
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    .line 4324
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4325
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4327
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    .line 4328
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4329
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4331
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_4

    .line 4332
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4333
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4335
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_5

    .line 4336
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4337
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4339
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_6

    .line 4340
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4341
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4343
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_7

    .line 4344
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4345
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4347
    :cond_7
    return-void
.end method

.method private updateRegions()V
    .locals 8

    .prologue
    const-wide v4, 0x3fc3333333333333L

    .line 4270
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 4271
    .local v1, localImagWidth:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    .line 4272
    .local v0, localImagHeight:I
    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 4274
    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    .line 4275
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4276
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4279
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4281
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4283
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4285
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4287
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4289
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4291
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4292
    return-void
.end method

.method private updateRightBottomHandle()V
    .locals 6

    .prologue
    .line 4350
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4351
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4352
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4353
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4354
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4359
    :goto_0
    return-void

    .line 4357
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 4386
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 4387
    return-void
.end method

.method private updateRightTopHandle()V
    .locals 5

    .prologue
    .line 4362
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 4363
    return-void
.end method

.method private updateTopMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 4390
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4391
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4392
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4393
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4394
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4399
    :goto_0
    return-void

    .line 4397
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateactionbar()V
    .locals 2

    .prologue
    .line 3469
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3473
    :cond_0
    :goto_0
    return-void

    .line 3471
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3472
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    .prologue
    .line 2255
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 2257
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2260
    :cond_0
    return-void
.end method

.method public MoveCursorRight()V
    .locals 2

    .prologue
    .line 2754
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .parameter "_visible"

    .prologue
    .line 2988
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 2989
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .parameter "isClear"

    .prologue
    const/4 v1, 0x1

    .line 3086
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    .line 3087
    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v1, :cond_2

    .line 3088
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 3095
    :cond_1
    :goto_0
    return-void

    .line 3089
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_3

    .line 3090
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0

    .line 3092
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 2082
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 2083
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 2086
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2087
    const/4 v0, 0x1

    .line 2090
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2095
    const/4 v0, 0x1

    .line 2098
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 2102
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2103
    const/4 v0, 0x1

    .line 2106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2110
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2127
    :cond_0
    :goto_0
    return v3

    .line 2112
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2113
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2114
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2115
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2116
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2121
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2126
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2127
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2118
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2126
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2122
    :catch_0
    move-exception v1

    .line 2123
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2131
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2149
    :cond_0
    :goto_0
    return v3

    .line 2133
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2134
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2135
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2136
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2137
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2147
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2149
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2139
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2147
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2143
    :catch_0
    move-exception v1

    .line 2144
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1507
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1511
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontName"

    .prologue
    .line 1515
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1516
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1518
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1519
    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1529
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1530
    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1532
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1533
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1522
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1523
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1525
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1526
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 2153
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2170
    :cond_0
    :goto_0
    return v2

    .line 2155
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2156
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2157
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2158
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2168
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2170
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2160
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2168
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2164
    :catch_0
    move-exception v0

    .line 2165
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 2174
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 2176
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2179
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2180
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2181
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 2183
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 2185
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2186
    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 2189
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2191
    :cond_0
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 2194
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2205
    :cond_0
    :goto_0
    return-void

    .line 2196
    :cond_1
    if-lez p2, :cond_2

    .line 2197
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2199
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 2202
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 2203
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1536
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1540
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 2214
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2215
    .local v0, cursurRect:Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 2217
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2219
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 2222
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2228
    :cond_0
    :goto_0
    return-void

    .line 2224
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2225
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2227
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2231
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2239
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 2240
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 2241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 2244
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2245
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2248
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2249
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2250
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 2251
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2252
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 570
    const/16 v19, 0x0

    .line 571
    .local v19, retVal:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v16, 0x1

    .line 572
    .local v16, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 573
    .local v17, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 575
    .local v15, MetaState:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 576
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    const/16 v4, 0x39

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 580
    if-eqz v16, :cond_6

    .line 581
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 586
    :cond_1
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_2

    const/16 v4, 0x97

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    .line 588
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 589
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_7

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 598
    :cond_4
    :goto_2
    const/16 v19, 0x1

    .line 822
    .end local v19           #retVal:Z
    :goto_3
    return v19

    .line 571
    .end local v15           #MetaState:I
    .end local v16           #down:Z
    .end local v17           #keyCode:I
    .restart local v19       #retVal:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    .line 583
    .restart local v15       #MetaState:I
    .restart local v16       #down:Z
    .restart local v17       #keyCode:I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    .line 593
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 595
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_2

    .line 599
    :cond_8
    const/16 v4, 0x7b

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_9

    const/16 v4, 0x91

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 601
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_b

    .line 602
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 611
    :cond_b
    :goto_4
    const/16 v19, 0x1

    goto :goto_3

    .line 606
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 608
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 612
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_13

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_e

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_13

    .line 613
    :cond_e
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    const/16 v4, 0x13

    move/from16 v0, v17

    if-ne v0, v4, :cond_11

    .line 614
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_10

    .line 615
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    .line 631
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 632
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 618
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 619
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 621
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_f

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    .line 622
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_12

    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorEnd()V

    goto :goto_5

    .line 626
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 627
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 633
    :cond_13
    const/16 v4, 0x5c

    move/from16 v0, v17

    if-eq v0, v4, :cond_14

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_17

    const/16 v4, 0x99

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 635
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_15

    .line 636
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 638
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageUp()V

    .line 639
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 640
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 649
    :cond_15
    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 643
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageUp()V

    .line 645
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 646
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_6

    .line 650
    :cond_17
    const/16 v4, 0x5d

    move/from16 v0, v17

    if-eq v0, v4, :cond_18

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_1b

    const/16 v4, 0x93

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 652
    :cond_18
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_19

    .line 653
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1a

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageDown()V

    .line 656
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 657
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 666
    :cond_19
    :goto_7
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 660
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageDown()V

    .line 662
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 663
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_7

    .line 669
    :cond_1b
    const/high16 v4, 0x20

    if-eq v15, v4, :cond_21

    .line 670
    const/16 v4, 0x92

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x94

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x96

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x98

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 675
    :cond_1c
    if-eqz v16, :cond_21

    .line 676
    const/16 v4, 0x92

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    .line 677
    const/16 v17, 0x14

    .line 678
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 679
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 680
    :cond_1d
    const/16 v4, 0x94

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 681
    const/16 v17, 0x15

    .line 682
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 683
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 684
    :cond_1e
    const/16 v4, 0x96

    move/from16 v0, v17

    if-ne v0, v4, :cond_1f

    .line 685
    const/16 v17, 0x16

    .line 686
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 687
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 688
    :cond_1f
    const/16 v4, 0x98

    move/from16 v0, v17

    if-ne v0, v4, :cond_20

    .line 689
    const/16 v17, 0x13

    .line 690
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 691
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 692
    :cond_20
    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 693
    const/4 v2, 0x0

    .line 695
    .local v2, newKeyEvent:Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 705
    .restart local v2       #newKeyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 711
    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    :cond_21
    const/16 v4, 0x13

    move/from16 v0, v17

    if-lt v0, v4, :cond_29

    const/16 v4, 0x16

    move/from16 v0, v17

    if-gt v0, v4, :cond_29

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v20

    .line 713
    .local v20, selctionAtBoundry:I
    if-nez v20, :cond_23

    .line 714
    if-eqz v16, :cond_22

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 716
    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 718
    :cond_23
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_26

    const/16 v4, 0x16

    move/from16 v0, v17

    if-eq v0, v4, :cond_24

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_26

    .line 719
    :cond_24
    if-eqz v16, :cond_25

    .line 720
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 721
    :cond_25
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 723
    :cond_26
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_35

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_27

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    .line 724
    :cond_27
    if-eqz v16, :cond_28

    .line 725
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 726
    :cond_28
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 729
    .end local v20           #selctionAtBoundry:I
    :cond_29
    const/16 v4, 0x3e

    move/from16 v0, v17

    if-ne v4, v0, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_2b

    .line 730
    if-eqz v16, :cond_2a

    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 732
    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 735
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 736
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 738
    :cond_2a
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 740
    :cond_2b
    const/16 v4, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_2e

    .line 741
    if-eqz v16, :cond_2d

    .line 742
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 744
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 746
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 747
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 749
    :cond_2c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 751
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 753
    :cond_2e
    const/16 v4, 0x42

    move/from16 v0, v17

    if-eq v0, v4, :cond_2f

    const/16 v4, 0xa0

    move/from16 v0, v17

    if-ne v0, v4, :cond_31

    .line 754
    :cond_2f
    if-eqz v16, :cond_30

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 756
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 760
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 762
    :cond_30
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 764
    :cond_31
    const/16 v4, 0x71

    move/from16 v0, v17

    if-eq v0, v4, :cond_32

    const/16 v4, 0x72

    move/from16 v0, v17

    if-ne v0, v4, :cond_33

    .line 765
    :cond_32
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 767
    :cond_33
    const/16 v4, 0x1d

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x1f

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x32

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x34

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x36

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x35

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v16, :cond_35

    .line 771
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sparse-switch v17, :sswitch_data_0

    .line 815
    :cond_35
    if-eqz v19, :cond_36

    .line 816
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 819
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto/16 :goto_3

    .line 775
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 776
    const/16 v18, 0x0

    .line 777
    .local v18, result:Z
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v18

    .line 778
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    move/from16 v19, v18

    .line 779
    goto/16 :goto_3

    .line 784
    .end local v18           #result:Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 785
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 790
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 791
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 796
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 797
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 802
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 803
    const v4, 0x102002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 808
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 809
    const v4, 0x102002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 822
    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 773
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 862
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 863
    const/4 v0, 0x1

    return v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2263
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2264
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2265
    :cond_0
    return-void
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2288
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2289
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2290
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "value"

    .prologue
    .line 2268
    const-string v1, "Insert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2270
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2271
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2273
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v4, 0x104070e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v4, 0x104070f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2285
    .end local v0           #length:I
    :goto_0
    return-void

    .line 2277
    .restart local v0       #length:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_1

    .line 2280
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2284
    .end local v0           #length:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 2

    .prologue
    .line 1544
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1545
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1547
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1548
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1549
    return-void
.end method

.method public executeOutdent()V
    .locals 2

    .prologue
    .line 1552
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1553
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1555
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1556
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1557
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2293
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2310
    :cond_0
    :goto_0
    return-object v2

    .line 2295
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2296
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 2297
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2298
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2308
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2310
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 2300
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2308
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2304
    :catch_0
    move-exception v0

    .line 2305
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 2314
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    .prologue
    .line 2319
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2320
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2321
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2324
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2328
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2330
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2325
    :catch_0
    move-exception v0

    .line 2326
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2328
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCurrentFontValue()I
    .locals 4

    .prologue
    .line 2335
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2336
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2337
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2340
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2344
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2346
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2341
    :catch_0
    move-exception v0

    .line 2342
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2344
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 2351
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsControllerSelected:Z

    return v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2355
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 2356
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 2360
    :goto_0
    return-object v1

    .line 2357
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2358
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2360
    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2364
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .locals 4

    .prologue
    .line 2368
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 2369
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 2377
    :cond_0
    :goto_0
    return-object v0

    .line 2371
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 2372
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2373
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2374
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2375
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2381
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2399
    :cond_0
    :goto_0
    return-object v3

    .line 2383
    :cond_1
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 2384
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2385
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 2386
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2387
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2397
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2399
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHTMLMarkupData;

    goto :goto_0

    .line 2389
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2397
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2403
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2420
    :cond_0
    :goto_0
    return-object v2

    .line 2405
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2406
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 2407
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2408
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2413
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2418
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2420
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 2410
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2418
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2414
    :catch_0
    move-exception v0

    .line 2415
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 2481
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2485
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    .line 2504
    :goto_0
    return-object v3

    .line 2487
    :cond_1
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2488
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 2489
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2490
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2500
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2502
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 2504
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_0

    .line 2492
    .end local v1           #pnt:Landroid/graphics/Point;
    :cond_2
    :try_start_3
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    monitor-exit v2

    goto :goto_0

    .line 2500
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2496
    :catch_0
    move-exception v0

    .line 2497
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShowSingleCursorHandlerState()Z
    .locals 1

    .prologue
    .line 2512
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2461
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2477
    :cond_0
    :goto_0
    return v2

    .line 2463
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2464
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2465
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2466
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2471
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2475
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2477
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2468
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2475
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2472
    :catch_0
    move-exception v0

    .line 2473
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2428
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 2429
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 2430
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2431
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 2432
    .local v0, chrVal:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 2433
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    .end local v0           #chrVal:I
    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v3, 0x0

    .line 2439
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2457
    :cond_0
    :goto_0
    return-object v3

    .line 2441
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 2442
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2443
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 2444
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2445
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2450
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2455
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2457
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 2447
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2455
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2451
    :catch_0
    move-exception v0

    .line 2452
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public hideSingleCursorHandler()V
    .locals 1

    .prologue
    .line 2517
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 2518
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2519
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2520
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 2521
    return-void
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 2524
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2530
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2532
    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 9
    .parameter "context"
    .parameter "imagetRect1"

    .prologue
    const/high16 v8, 0x4000

    .line 3505
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 3506
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 3508
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 3509
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 3510
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 3511
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 3512
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 3513
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 3514
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 3516
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    .line 3517
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    .line 3518
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 3519
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 3520
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 3521
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 3524
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lt_height:I

    .line 3525
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lt_width:I

    .line 3528
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rt_height:I

    .line 3529
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rt_width:I

    .line 3531
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    .line 3532
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    .line 3535
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 3536
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 3538
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 3539
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 3541
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rm_height:I

    .line 3542
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rm_width:I

    .line 3544
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lm_height:I

    .line 3545
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lm_width:I

    .line 3547
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    .line 3548
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    .line 3550
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3552
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 3554
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3555
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3556
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 3557
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 3558
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 3559
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 3560
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 3562
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 3563
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 3564
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 3565
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 3567
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3569
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3570
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mTouchSlop:I

    .line 3571
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .locals 4
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2535
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v0

    .line 2537
    .local v0, selectionType:I
    sget-object v1, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v1, :cond_1

    .line 2538
    const-string v1, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    :cond_0
    :goto_0
    const-string v1, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    if-ne v3, v0, :cond_2

    .line 2547
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2551
    :goto_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 2552
    return-void

    .line 2540
    :cond_1
    sget-object v1, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v1, :cond_0

    .line 2541
    const-string v1, "MoveToEndOfDocument"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2549
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 2572
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2573
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2574
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2581
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2584
    const-string v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2585
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2586
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 2555
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2556
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2563
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2566
    const-string v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2567
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2568
    return-void
.end method

.method public insertOrderedList()V
    .locals 2

    .prologue
    .line 1560
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1561
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1563
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1564
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;
    .locals 5
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/WebView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    const/4 v3, -0x1

    .line 2590
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    invoke-direct {v2, p0, v3, v3}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    .line 2611
    :goto_0
    return-object v2

    .line 2592
    :cond_1
    new-instance v1, Landroid/webkit/WebViewCore$EditableParams;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$EditableParams;-><init>()V

    .line 2593
    .local v1, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 2594
    iput p2, v1, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    .line 2595
    iput-boolean p3, v1, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    .line 2596
    iput-object p4, v1, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 2598
    monitor-enter v1

    .line 2599
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2600
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2605
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2609
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2611
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    iget v3, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_0

    .line 2602
    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    monitor-exit v1

    goto :goto_0

    .line 2609
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    .prologue
    .line 1567
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1568
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1570
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1571
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 2616
    const/4 v1, 0x0

    .local v1, beforeStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2618
    .local v0, aftStr:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2622
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2625
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2627
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2630
    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_a

    .line 2632
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2634
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2644
    :goto_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 2645
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :cond_5
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2684
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2685
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    .line 2687
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2688
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2689
    const/4 v2, 0x0

    sput v2, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2690
    :cond_7
    :goto_2
    return-void

    .line 2638
    :cond_8
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2639
    const-string v0, "Images inserted"

    goto :goto_0

    .line 2641
    :cond_9
    const-string v0, "Images"

    goto :goto_0

    .line 2650
    :cond_a
    const v2, 0x1020020

    if-ne p1, v2, :cond_b

    .line 2652
    const-string v0, ""

    .line 2653
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    .line 2655
    :cond_b
    const v2, 0x1020408

    if-ne p1, v2, :cond_c

    .line 2657
    const-string v0, ""

    .line 2658
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2660
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 2663
    :cond_c
    const v2, 0x102040a

    if-ne p1, v2, :cond_d

    .line 2665
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2666
    const-string v1, ""

    goto :goto_1

    .line 2668
    :cond_d
    const/16 v2, 0xf

    if-ne p1, v2, :cond_7

    .line 2671
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2673
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 2674
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    :cond_e
    const-string v1, ""

    goto :goto_1
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2693
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2711
    :cond_0
    :goto_0
    return v3

    .line 2695
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2696
    .local v0, bodyEmpty:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2697
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2698
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2699
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2709
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2711
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2701
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2709
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2705
    :catch_0
    move-exception v1

    .line 2706
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 2719
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2720
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 2724
    sget-object v0, Landroid/webkit/HtmlComposerView;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HtmlComposerView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 2725
    const/4 v0, 0x1

    .line 2728
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1453
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    packed-switch p1, :pswitch_data_0

    .line 1501
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1457
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1459
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1463
    :pswitch_2
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1465
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1467
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1468
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1472
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1473
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    .line 1474
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1475
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1478
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    .line 1479
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 1481
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1487
    :pswitch_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    .line 1488
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1492
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1494
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public length()I
    .locals 1

    .prologue
    .line 2732
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "htmlFilePath"

    .prologue
    .line 2736
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2738
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 2742
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2743
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2745
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 2748
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2749
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2751
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    .prologue
    .line 2758
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    .prologue
    .line 2762
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    .prologue
    .line 2766
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    .prologue
    .line 2770
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .locals 2

    .prologue
    .line 2798
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2799
    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2801
    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .locals 2

    .prologue
    .line 2804
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2805
    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2807
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    .prologue
    .line 2774
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2775
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2777
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    .prologue
    .line 2780
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2781
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2783
    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    .prologue
    .line 2786
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2787
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2789
    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    .prologue
    .line 2792
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2793
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2795
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuItem(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 413
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 415
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v5, v3, :cond_0

    .line 416
    const-string v3, "HtmlComposerView"

    const-string/jumbo v6, "onContextMenuItem To hide Cursor handler"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 420
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 422
    sparse-switch p1, :sswitch_data_0

    .line 565
    :cond_1
    :goto_0
    return v4

    .line 426
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 427
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 429
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 430
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    iput v3, v6, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 431
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 432
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 433
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 435
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    move v4, v5

    .line 436
    goto :goto_0

    :cond_2
    move v3, v4

    .line 430
    goto :goto_1

    .line 440
    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 441
    .local v0, cursurRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 444
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Landroid/webkit/HtmlComposerView;->setTextSelecitonAt(II)Z

    .line 445
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 446
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    move v4, v5

    .line 449
    goto :goto_0

    .line 452
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 453
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 454
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 455
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 456
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 457
    const v3, 0x1020020

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 458
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 460
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_3

    .line 462
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 464
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 466
    iput-object v8, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    :cond_3
    move v4, v5

    .line 468
    goto/16 :goto_0

    .line 471
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 473
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 474
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 475
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 476
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 477
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 478
    const v3, 0x1020408

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 480
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    .line 482
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 484
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 485
    iput-object v8, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 486
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_4
    move v4, v5

    .line 489
    goto/16 :goto_0

    .line 492
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 493
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 494
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 495
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 496
    goto/16 :goto_0

    .line 502
    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 505
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 507
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 509
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    move v4, v5

    .line 511
    goto/16 :goto_0

    .line 514
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 516
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v8, 0x104070e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v8, 0x104070f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 517
    goto/16 :goto_0

    .line 519
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 521
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 524
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v2

    .line 526
    .local v2, selectionType:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 528
    if-ne v5, v2, :cond_7

    .line 529
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 533
    :goto_2
    const v3, 0x1020022

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    move v4, v5

    .line 534
    goto/16 :goto_0

    .line 531
    :cond_7
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2

    .line 542
    .end local v2           #selectionType:I
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 543
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    move v4, v5

    .line 544
    goto/16 :goto_0

    .line 547
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 548
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    .line 549
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 550
    goto/16 :goto_0

    .line 553
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    .line 554
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 555
    goto/16 :goto_0

    .line 558
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 559
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_8

    .line 560
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_8
    move v4, v5

    .line 562
    goto/16 :goto_0

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x102002e -> :sswitch_8
        0x102002f -> :sswitch_9
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .parameter "outAttrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 879
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v4, v1, :cond_0

    .line 882
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 883
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 884
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 887
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    if-nez v1, :cond_1

    .line 888
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 893
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 900
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 901
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 903
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 904
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 906
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 914
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 915
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 917
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 920
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 921
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 2815
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 2816
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 2817
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2818
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2819
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2826
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 926
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 928
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 929
    if-nez p1, :cond_3

    .line 930
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 932
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v4, v0, :cond_0

    .line 933
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocusChanged To hide Cursor handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 935
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 940
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 942
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 960
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 961
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 963
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_2

    .line 964
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 965
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearActionModes()V

    .line 967
    :cond_2
    return-void

    .line 944
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 945
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 947
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    if-eqz v0, :cond_4

    .line 948
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 952
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 972
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 974
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 975
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 979
    .local v0, contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 981
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 982
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent false == isHoverPointWithinIconAreaForResizing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :cond_0
    :goto_0
    return v2

    .line 985
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 986
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onHoverEvent ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 988
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 989
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 990
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 991
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 992
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 995
    .restart local v0       #contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 997
    .restart local v1       #contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-ne v2, v3, :cond_5

    .line 998
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onHoverEvent true == isHoverPointWithinIconAreaForResizing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->show(I)V

    goto :goto_1

    .line 1006
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1002
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 830
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 831
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 832
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 834
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitializeAccessibilityEvent mAdd = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mRemove = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-nez v0, :cond_2

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 839
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    if-nez v0, :cond_4

    .line 841
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitializeAccessibilityEvent getTTSbeforeText() 1 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    if-eqz v0, :cond_1

    .line 847
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitializeAccessibilityEvent getTTSbeforeText() 2 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 1036
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1037
    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htmlcompor onKeyDown "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1047
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1053
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1060
    const/16 v5, 0x37

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3e

    if-ne p1, v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-ne v5, v4, :cond_3

    .line 1063
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1066
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1089
    :goto_0
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1090
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1092
    const/4 v1, 0x0

    .line 1094
    .local v1, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v8}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, spannableString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1098
    .local v2, spannableChar:[C
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1100
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1101
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1102
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1103
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1105
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v5, :cond_4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v5, :cond_4

    .line 1107
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1110
    :cond_4
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lt v5, v4, :cond_5

    .line 1112
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    :cond_5
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, p0, v6, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1117
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v5, v6

    .line 1119
    .local v0, diff:I
    if-eqz v0, :cond_6

    .line 1120
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1122
    :cond_6
    if-lez v0, :cond_b

    .line 1124
    if-eqz v1, :cond_a

    .line 1126
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9

    .line 1128
    const-string v5, ""

    invoke-virtual {p0, v5, v4}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1129
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1144
    :goto_1
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1145
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1154
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 1155
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1161
    .end local v0           #diff:I
    .end local v1           #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .end local v2           #spannableChar:[C
    .end local v3           #spannableString:Ljava/lang/String;
    :cond_8
    :goto_3
    :sswitch_0
    return v4

    .line 1069
    :sswitch_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    goto :goto_3

    .line 1074
    :sswitch_2
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_0

    .line 1078
    :sswitch_3
    const-string v5, "DeleteForward"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 1083
    :sswitch_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    .line 1134
    .restart local v0       #diff:I
    .restart local v1       #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .restart local v2       #spannableChar:[C
    .restart local v3       #spannableString:Ljava/lang/String;
    :cond_9
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1140
    :cond_a
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1146
    :cond_b
    if-gez v0, :cond_7

    .line 1148
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1150
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1151
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    goto :goto_2

    .line 1161
    .end local v0           #diff:I
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    .line 1066
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x43 -> :sswitch_4
        0x70 -> :sswitch_3
        0xdd -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1017
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1021
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1022
    const/16 v2, 0x17

    if-ne v2, p1, :cond_1

    .line 1023
    const v2, 0x1020028

    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 1030
    :goto_0
    return v1

    .line 1028
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1030
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1166
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 1170
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1178
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1179
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htmlcompor onKeyUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1205
    :goto_0
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v1, :cond_1

    .line 1207
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1210
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v1, :cond_4

    .line 1212
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1216
    :goto_1
    :sswitch_0
    return v0

    .line 1185
    :sswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_0

    .line 1188
    :sswitch_2
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_3

    .line 1189
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1191
    const-string v1, "image"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 1192
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1195
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1196
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 1198
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1216
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1182
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 854
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 855
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 856
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPopulateAccessibilityEvent text = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    return-void
.end method

.method public onRecieveWebViewSelectionChanged()V
    .locals 3

    .prologue
    .line 2899
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onRecieveWebViewSelectionChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getDCHandlerLastHandleType()I

    move-result v0

    .line 2903
    .local v0, handleType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2904
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    .line 2909
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 2910
    return-void

    .line 2905
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2906
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_0
.end method

.method public onRecieveWebviewLongTouchUp()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2857
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onRecieveWebviewLongTouchUp() Has Long-pressed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v3, :cond_0

    .line 2860
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 2861
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onRecieveWebviewLongTouchUp() this view has already lost the focus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :goto_0
    return-void

    .line 2866
    :cond_0
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v3, :cond_1

    .line 2867
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2869
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 2871
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imm active  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2875
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v2

    .line 2876
    .local v2, selectionType:I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 2877
    invoke-virtual {v0, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2879
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2881
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v1

    .line 2882
    .local v1, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v4, v1, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 2883
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v4, v1, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 2884
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 2885
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 2887
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 2895
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    .end local v2           #selectionType:I
    :cond_1
    :goto_1
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0

    .line 2888
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v2       #selectionType:I
    :cond_2
    if-nez v2, :cond_1

    .line 2889
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 2890
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 2891
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1
.end method

.method public onRecieveWebviewShortTouchUp()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 2830
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onRecieveWebviewShortTouchUp() Has Short-pressed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v1, :cond_0

    .line 2833
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 2834
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onRecieveWebviewShortTouchUp() this view has already lost the focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    :goto_0
    return-void

    .line 2838
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_1

    .line 2839
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2841
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 2843
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imm active  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2846
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2848
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 2849
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 2850
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 2853
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 1221
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1222
    .local v13, ret:Z
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContentX()I

    move-result v3

    .line 1223
    .local v3, contentX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContentY()I

    move-result v4

    .line 1225
    .local v4, contentY:I
    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MotionEvent.ACTION_DOWN  html compopser"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1348
    :cond_0
    :goto_0
    return v13

    .line 1229
    :pswitch_0
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 1230
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mInActionMove:Z

    .line 1231
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1233
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mInActionMove:Z

    .line 1234
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 1236
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->originalWidth:I

    .line 1237
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->originalHeight:I

    goto :goto_0

    .line 1244
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 1245
    .local v7, movingContentX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v8, v0

    .line 1246
    .local v8, movingContentY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1248
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Landroid/webkit/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 1249
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    goto :goto_0

    .line 1256
    .end local v7           #movingContentX:I
    .end local v8           #movingContentY:I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1257
    const-string v17, "HtmlComposerView"

    const-string/jumbo v18, "making selection set to true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1261
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1266
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v12

    .line 1268
    .local v12, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 1271
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_0

    .line 1274
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1278
    .local v10, rawX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 1279
    .local v11, rawY:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 1280
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1284
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v6

    .line 1285
    .local v6, finalWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v5

    .line 1287
    .local v5, finalHeight:I
    const/4 v14, 0x0

    .line 1288
    .local v14, sameImageFlag:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 1290
    .local v9, oldImageRect:Landroid/graphics/Rect;
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1291
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1293
    const/4 v14, 0x1

    .line 1297
    :cond_2
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_6

    .line 1300
    :cond_3
    const-string v17, "HtmlComposerView"

    const-string v18, "doResizeImage called - Image is going to resize "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v16

    .line 1302
    .local v16, selectedImgRect:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1303
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/webkit/HtmlComposerView;->doResizeImage(II)V

    .line 1304
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1307
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 1309
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1341
    .end local v16           #selectedImgRect:Landroid/graphics/Rect;
    :cond_5
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mInActionMove:Z

    goto/16 :goto_0

    .line 1312
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1315
    const-string v17, "InsertHTML"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1318
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 1319
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 1320
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 1321
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 1323
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 1325
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_1

    .line 1328
    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v3, v0, :cond_8

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v3, v0, :cond_8

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_8

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v4, v0, :cond_9

    .line 1330
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1331
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1332
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    goto/16 :goto_1

    .line 1334
    :cond_9
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    if-nez v14, :cond_5

    .line 1336
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v15

    .line 1337
    .local v15, selectedImageRect:Landroid/graphics/Rect;
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 1338
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1353
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 1355
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1356
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1358
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1359
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1362
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 1365
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1

    .line 1367
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1369
    :cond_1
    if-nez p1, :cond_5

    .line 1371
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v6, v2, :cond_2

    .line 1372
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onWindowFocusChanged To hide Cursor handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 1374
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 1377
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_4

    .line 1379
    :cond_3
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1380
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1382
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_4
    :goto_0
    return-void

    .line 1388
    :cond_5
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_6

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_b

    .line 1390
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_7
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged spanComposerText count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    .line 1396
    .local v0, diff:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1405
    if-lez v0, :cond_d

    .line 1407
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1422
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1424
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1425
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1427
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_9

    .line 1428
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1429
    :cond_9
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_a

    .line 1430
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1432
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1435
    .end local v0           #diff:I
    :cond_b
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_c

    .line 1436
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 1439
    :cond_c
    sget v2, Landroid/webkit/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1440
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1441
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1444
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1409
    .end local v1           #msg:Landroid/os/Message;
    .restart local v0       #diff:I
    :cond_d
    if-nez v0, :cond_e

    .line 1410
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 1413
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1414
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1

    .line 1417
    :cond_e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 1418
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1419
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "context"
    .parameter "imagetRect"

    .prologue
    const/4 v5, 0x1

    .line 3575
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 3576
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 3577
    invoke-virtual {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3578
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 3579
    .local v0, re:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3581
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3582
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 3586
    .local v1, reh:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3588
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 3589
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 3593
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 1574
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1575
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 1579
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1580
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1582
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1583
    return-void
.end method

.method public registerNotificationListener(Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1586
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1587
    return-void
.end method

.method public removeNotificationListener()V
    .locals 1

    .prologue
    .line 1590
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1591
    return-void
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 2913
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2917
    :cond_0
    :goto_0
    return-void

    .line 2915
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2916
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 2920
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2924
    :cond_0
    :goto_0
    return-void

    .line 2922
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2923
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 1594
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 2927
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2946
    :cond_0
    :goto_0
    return v3

    .line 2929
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2931
    .local v2, selectedType:Ljava/lang/Integer;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2932
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2933
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2934
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2944
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2946
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 2936
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2944
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 868
    invoke-super {p0, p1}, Landroid/webkit/WebView;->sendAccessibilityEvent(I)V

    .line 869
    return-void
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2950
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2963
    :cond_0
    :goto_0
    return-void

    .line 2952
    :cond_1
    if-eqz p1, :cond_2

    .line 2953
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2954
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 2957
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 2958
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2959
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2960
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2966
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2985
    :cond_0
    :goto_0
    return-void

    .line 2967
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2969
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 2970
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2972
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 2973
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2974
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2979
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2984
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2976
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2980
    :catch_0
    move-exception v0

    .line 2981
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .parameter "isInComposingState"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 269
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .parameter "defaultFontSize"

    .prologue
    .line 2992
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2993
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 2997
    :goto_0
    return-void

    .line 2995
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3000
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3019
    :cond_0
    :goto_0
    return-void

    .line 3001
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 3003
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 3004
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 3006
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 3007
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3008
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3013
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3018
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3010
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3014
    :catch_0
    move-exception v0

    .line 3015
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .parameter "bIsActive"

    .prologue
    .line 3023
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 3025
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .parameter "imeOption"

    .prologue
    .line 3028
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 3029
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4366
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 4367
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .parameter "maxHtmlLength"

    .prologue
    .line 3056
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 3057
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 3058
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1599
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 1600
    return-void
.end method

.method public setPageZoom(F)V
    .locals 3
    .parameter "factor"

    .prologue
    .line 3032
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3033
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageZoom factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_0
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 3037
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3038
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebClipboard;->setZoomFactorForPasting(F)V

    .line 3039
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    if-gt v0, v2, :cond_3

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/webkit/WebClipboard;->setWidthForCopiedImage(I)V

    .line 3042
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3043
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x228

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3044
    :cond_2
    return-void

    .line 3039
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    goto :goto_0
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3047
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 3048
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 3051
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 3052
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 3053
    return-void
.end method

.method public textToSpeech(II)V
    .locals 2
    .parameter "add"
    .parameter "remove"

    .prologue
    .line 3062
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3063
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    .line 3064
    iput p2, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 3065
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "sendAccessbilityEvent [ 16]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 3068
    :cond_1
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 1603
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1609
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1607
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 1612
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1616
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 1621
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1628
    :goto_0
    return-void

    .line 1624
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1625
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1627
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 1631
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1632
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1633
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1635
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1636
    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 3072
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3076
    :cond_0
    :goto_0
    return-void

    .line 3074
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3075
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .parameter "curSelStart"
    .parameter "curSelEnd"

    .prologue
    .line 3079
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3083
    :cond_0
    :goto_0
    return-void

    .line 3081
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3082
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "imagetRect"

    .prologue
    .line 3597
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3598
    return-void
.end method
