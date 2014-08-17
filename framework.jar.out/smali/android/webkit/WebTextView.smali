.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$AutoCompleteAdapter;,
        Landroid/webkit/WebTextView$WebTextViewLayout;,
        Landroid/webkit/WebTextView$BackgroundDrawable;,
        Landroid/webkit/WebTextView$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREVNEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field private static final EMAIL:I = 0x4

.field static final FORM_NOT_AUTOFILLABLE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NORMAL_TEXT_FIELD:I = 0x0

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final NUMBER:I = 0x5

.field private static final PASSWORD:I = 0x2

.field private static final SEARCH:I = 0x3

.field private static final TELEPHONE:I = 0x6

.field private static final TEXT_AREA:I = 0x1

.field private static final URL:I = 0x7


# instance fields
.field private mAcceptJsSelection:Z

.field private mAction:I

.field private mAutoFillProfileIsSet:Z

.field private mAutoFillable:Z

.field private mCharacter:[C

.field private mDelSelEnd:I

.field private mDelSelStart:I

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotDelete:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mInsideRemove:Z

.field private mKeepSelectionOnce:Z

.field private mMaxLength:I

.field private mNodeName:Ljava/lang/String;

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mQueryId:I

.field private mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

.field private mRingInset:I

.field private mScrolled:Z

.field private mSingle:Z

.field private mType:I

.field private mWebTextfont:Landroid/graphics/Typeface;

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;I)V
    .locals 7
    .parameter "context"
    .parameter "webView"
    .parameter "autoFillQueryId"

    .prologue
    const/4 v5, -0x1

    .line 211
    const/4 v3, 0x0

    const v4, 0x10102b9

    invoke-direct {p0, p1, v3, v4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput v5, p0, Landroid/webkit/WebTextView;->mType:I

    .line 147
    const/4 v3, 0x1

    new-array v3, v3, [C

    iput-object v3, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 212
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 213
    iput v5, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 218
    const-string v3, "/system/fonts/DroidSans.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebTextView;->mWebTextfont:Landroid/graphics/Typeface;

    .line 219
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebTextfont:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebTextfont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    :cond_0
    invoke-virtual {p0, p3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 226
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 227
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    or-int/lit16 v3, v3, 0x80

    or-int/lit8 v0, v3, 0x4

    .line 229
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 234
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setTextColor(I)V

    .line 235
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setIncludeFontPadding(Z)V

    .line 240
    new-instance v3, Landroid/webkit/WebTextView$1;

    invoke-direct {v3, p0}, Landroid/webkit/WebTextView$1;-><init>(Landroid/webkit/WebTextView;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    .line 250
    new-instance v3, Landroid/webkit/WebTextView$MyResultReceiver;

    iget-object v4, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebTextView$MyResultReceiver;-><init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    .line 251
    const/high16 v3, 0x4000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v3, v4

    .line 252
    .local v2, ringWidth:F
    float-to-int v3, v2

    iput v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    .line 253
    new-instance v3, Landroid/webkit/WebTextView$BackgroundDrawable;

    iget v4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    invoke-direct {v3, v4}, Landroid/webkit/WebTextView$BackgroundDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 256
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/webkit/WebTextView;->mQueryId:I

    return v0
.end method

.method private lineUpScroll()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 497
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 498
    .local v0, layout:Landroid/text/Layout;
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 499
    iget-boolean v3, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v3, :cond_2

    .line 501
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 506
    .local v1, maxScrollX:F
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollX:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->scrollFocusedTextInputX(F)V

    .line 513
    .end local v1           #maxScrollX:F
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->scrollFocusedTextInputY(I)V

    goto :goto_0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 1002
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 1101
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 1102
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 1103
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1108
    :goto_0
    return-void

    .line 1105
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method static urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "urlString"

    .prologue
    .line 1426
    const/4 v1, 0x0

    .line 1428
    .local v1, url:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #url:Ljava/net/URL;
    .local v2, url:Ljava/net/URL;
    move-object v1, v2

    .line 1433
    .end local v2           #url:Ljava/net/URL;
    .restart local v1       #url:Ljava/net/URL;
    :goto_0
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, e:Ljava/net/MalformedURLException;
    const-string/jumbo v3, "webtextview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1433
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 317
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v7, 0x1

    .line 318
    .local v7, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 320
    .local v9, keyCode:I
    const/4 v8, 0x0

    .line 321
    .local v8, isArrowKey:Z
    packed-switch v9, :pswitch_data_0

    .line 330
    :goto_2
    const/16 v1, 0x3d

    if-ne v1, v9, :cond_3

    .line 331
    if-eqz v7, :cond_1

    .line 332
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 334
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    .end local v7           #down:Z
    .end local v8           #isArrowKey:Z
    .end local v9           #keyCode:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 326
    .restart local v7       #down:Z
    .restart local v8       #isArrowKey:Z
    .restart local v9       #keyCode:I
    :pswitch_0
    const/4 v8, 0x1

    goto :goto_2

    .line 336
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 337
    .local v15, text:Landroid/text/Spannable;
    invoke-static {v15}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    .line 338
    .local v12, oldStart:I
    invoke-static {v15}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    .line 343
    .local v11, oldEnd:I
    const/16 v1, 0x43

    if-ne v1, v9, :cond_5

    .line 344
    if-nez v12, :cond_4

    if-nez v11, :cond_4

    .line 345
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 346
    const/4 v1, 0x1

    goto :goto_0

    .line 348
    :cond_4
    if-eqz v7, :cond_5

    .line 349
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 350
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    .line 351
    move-object/from16 v0, p0

    iput v11, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    .line 355
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x42

    if-eq v1, v9, :cond_6

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_9

    .line 357
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 358
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 360
    :cond_7
    if-nez v7, :cond_8

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 366
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 367
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 369
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 370
    :cond_9
    const/16 v1, 0x17

    if-ne v1, v9, :cond_c

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 373
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 376
    :cond_a
    if-nez v7, :cond_b

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 380
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 384
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_d

    .line 385
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 388
    :cond_d
    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 389
    .local v3, oldLength:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-ne v3, v1, :cond_10

    const/4 v10, 0x1

    .line 394
    .local v10, maxedOut:Z
    :goto_3
    if-eqz v10, :cond_11

    if-eq v11, v12, :cond_11

    .line 395
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 399
    .local v13, oldText:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 410
    const/16 v1, 0x42

    if-eq v1, v9, :cond_e

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_f

    .line 415
    :cond_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 417
    :cond_f
    if-eqz v10, :cond_13

    if-nez v8, :cond_13

    const/16 v1, 0x43

    if-eq v9, v1, :cond_13

    .line 418
    if-ne v11, v12, :cond_12

    .line 420
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 389
    .end local v10           #maxedOut:Z
    .end local v13           #oldText:Ljava/lang/String;
    :cond_10
    const/4 v10, 0x0

    goto :goto_3

    .line 397
    .restart local v10       #maxedOut:Z
    :cond_11
    const-string v13, ""

    .restart local v13       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 421
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 429
    .local v14, span:Landroid/text/Spannable;
    invoke-static {v14}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 430
    .local v5, newStart:I
    invoke-static {v14}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 431
    .local v6, newEnd:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 433
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 448
    .end local v5           #newStart:I
    .end local v6           #newEnd:I
    .end local v14           #span:Landroid/text/Spannable;
    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 452
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    if-eqz v1, :cond_15

    if-nez v7, :cond_15

    .line 453
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 456
    :cond_15
    if-eqz v8, :cond_17

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 462
    if-eqz v7, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 465
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method ensureLayout()V
    .locals 6

    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 471
    iget v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    iget v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 472
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 473
    .local v0, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 474
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebTextView;->layout(IIII)V

    .line 478
    .end local v0           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    return-object v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 1409
    iget v0, p0, Landroid/webkit/WebTextView;->mType:I

    return v0
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 490
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 0
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 520
    invoke-super/range {p0 .. p6}, Landroid/widget/AutoCompleteTextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 522
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 523
    return-void
.end method

.method moveCursorToEnd()V
    .locals 5

    .prologue
    .line 1203
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1204
    .local v3, text:Landroid/text/Editable;
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1205
    .local v0, length:I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1206
    .local v2, selStart:I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1207
    .local v1, selEnd:I
    if-ne v2, v1, :cond_0

    .line 1208
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1209
    invoke-static {v3, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1210
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1211
    iget-object v4, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 1213
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 563
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 569
    :cond_0
    return-object v0
.end method

.method public onEditorAction(I)V
    .locals 4
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 574
    packed-switch p1, :pswitch_data_0

    .line 603
    :goto_0
    :pswitch_0
    return-void

    .line 584
    :pswitch_1
    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebTextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 588
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0

    .line 593
    :pswitch_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 595
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 597
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 667
    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 668
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 669
    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setActive(Z)V

    .line 674
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 675
    return-void

    .line 671
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 684
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040403

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 688
    .local v0, m_setupAutoFill:Z
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 689
    .local v1, settings:Landroid/webkit/WebSettings;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    if-eqz v2, :cond_1

    .line 691
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v3, p0, Landroid/webkit/WebTextView;->mQueryId:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->autoFillForm(I)V

    .line 702
    .end local v0           #m_setupAutoFill:Z
    .end local v1           #settings:Landroid/webkit/WebSettings;
    :cond_0
    :goto_0
    return-void

    .line 693
    .restart local v0       #m_setupAutoFill:Z
    .restart local v1       #settings:Landroid/webkit/WebSettings;
    :cond_1
    if-eqz v0, :cond_0

    .line 697
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 609
    const-string v4, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget v4, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 612
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v5, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v3, v4, v5, v2}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v1

    .line 616
    .local v1, prevInputType:I
    if-ne v1, v2, :cond_2

    .line 617
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 625
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->moveCursorToEnd()V

    .line 626
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->invalidate()V

    .line 654
    .end local v1           #prevInputType:I
    :goto_1
    return v2

    .line 618
    .restart local v1       #prevInputType:I
    :cond_2
    if-nez v1, :cond_1

    .line 622
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_0

    .line 629
    .end local v1           #prevInputType:I
    :cond_3
    const-string v4, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_4

    iget v4, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    .line 632
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v6, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v4, v5, v6, v3}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v0

    .line 636
    .local v0, nextInputType:I
    if-ne v0, v2, :cond_6

    .line 637
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 645
    :cond_5
    :goto_2
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->moveCursorToEnd()V

    .line 646
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 638
    :cond_6
    if-nez v0, :cond_5

    .line 642
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_2

    .end local v0           #nextInputType:I
    :cond_7
    move v2, v3

    .line 654
    goto :goto_1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 706
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 707
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 708
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 712
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 719
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 721
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 18
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 725
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 726
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 731
    .local v13, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 738
    .local v14, preChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 739
    if-nez p4, :cond_5

    .line 740
    if-lez p3, :cond_4

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 743
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    if-eqz v2, :cond_3

    .line 744
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 745
    add-int v12, p2, p3

    .line 746
    .local v12, oldEnd:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    if-ne v2, v12, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    if-ne v2, v12, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 751
    :cond_2
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 753
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 760
    .end local v12           #oldEnd:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 762
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    goto :goto_0

    .line 772
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 775
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_6

    add-int/lit8 v2, p4, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 776
    add-int v2, p2, p3

    move/from16 v0, p2

    invoke-virtual {v14, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 778
    .local v15, replaceButOne:Ljava/lang/String;
    add-int v2, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 780
    .local v16, replacedString:Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 782
    add-int p2, p2, p3

    .line 783
    const/16 p3, 0x0

    .line 784
    const/16 p4, 0x1

    .line 791
    .end local v15           #replaceButOne:Ljava/lang/String;
    .end local v16           #replacedString:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    .line 792
    .local v8, events:[Landroid/view/KeyEvent;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 793
    add-int v2, p2, p4

    add-int/lit8 v2, v2, -0x1

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 794
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v10

    .line 795
    .local v10, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    invoke-virtual {v10, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v8

    .line 797
    .end local v10           #kmap:Landroid/view/KeyCharacterMap;
    :cond_7
    if-eqz v8, :cond_a

    const/16 v17, 0x1

    .line 798
    .local v17, useKeyEvents:Z
    :goto_1
    if-eqz v17, :cond_b

    .line 805
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v2, :cond_8

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->setSelection(II)V

    .line 808
    :cond_8
    array-length v11, v8

    .line 809
    .local v11, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v11, :cond_c

    .line 812
    aget-object v2, v8, v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 813
    aget-object v2, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 809
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 797
    .end local v9           #i:I
    .end local v11           #length:I
    .end local v17           #useKeyEvents:Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_1

    .line 817
    .restart local v17       #useKeyEvents:Z
    :cond_b
    add-int v2, p2, p4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v4, p2, p3

    add-int v6, p2, p4

    add-int v7, p2, p4

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 825
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 826
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 829
    .end local v5           #replace:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 919
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 836
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 839
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 842
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 843
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 844
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 845
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_0

    .line 849
    :pswitch_1
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.pcw"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 850
    const/4 v8, 0x1

    goto :goto_1

    .line 852
    :cond_0
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_1

    .line 853
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 854
    const/4 v8, 0x0

    goto :goto_1

    .line 856
    :cond_1
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 857
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 858
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 859
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 860
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 861
    iget v8, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 862
    .local v1, dx:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 866
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 867
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_2

    if-le v2, v7, :cond_3

    .line 869
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 870
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 871
    const/4 v8, 0x1

    goto :goto_1

    .line 873
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 878
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 880
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_6

    .line 882
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_5

    .line 883
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 885
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 887
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 888
    .local v5, scrolled:Z
    if-eqz v5, :cond_6

    .line 889
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 890
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 891
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 894
    .end local v5           #scrolled:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 897
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 898
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_7

    .line 899
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 900
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 902
    :cond_7
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_8

    .line 905
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 906
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_8

    .line 907
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 911
    :cond_8
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_9

    .line 912
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 914
    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 924
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 925
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 937
    :cond_0
    :goto_0
    return v2

    .line 927
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 930
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 931
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 932
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 944
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.pcw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    :goto_0
    return v0

    .line 948
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isTouchNotInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->initializeFakeTouch()V

    .line 953
    :cond_1
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mKeepSelectionOnce:Z

    .line 955
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    goto :goto_0
.end method

.method remove()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 964
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 965
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 966
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 968
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 969
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v1

    .line 970
    .local v1, isFocused:Z
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 971
    if-eqz v1, :cond_1

    .line 972
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 974
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 975
    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 977
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebTextViewOnOffStatus(Z)V

    .line 980
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebTextfont:Landroid/graphics/Typeface;

    if-eqz v2, :cond_2

    .line 984
    iput-object v4, p0, Landroid/webkit/WebTextView;->mWebTextfont:Landroid/graphics/Typeface;

    .line 988
    :cond_2
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 993
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1009
    if-eqz p1, :cond_1

    .line 1010
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1012
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$200(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 1013
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {p0, p0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1018
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->showDropDown()V

    .line 1022
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1023
    return-void

    .line 1016
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 1020
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method setAutoFillProfileIsSet(Z)V
    .locals 0
    .parameter "autoFillProfileIsSet"

    .prologue
    .line 1421
    iput-boolean p1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    .line 1422
    return-void
.end method

.method public setAutoFillable(I)V
    .locals 1
    .parameter "queryId"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    .line 302
    iput p1, p0, Landroid/webkit/WebTextView;->mQueryId:I

    .line 303
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDefaultSelection()V
    .locals 3

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1065
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 1066
    .local v0, selection:I
    :goto_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 1076
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 1077
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 1082
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->incrementTextGeneration()V

    .line 1083
    :cond_1
    return-void

    .line 1065
    .end local v0           #selection:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1080
    .restart local v0       #selection:I
    :cond_3
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method public setGravityForRtl()V
    .locals 2

    .prologue
    .line 1437
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    .line 1438
    .local v0, gravity:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 1439
    return-void

    .line 1437
    .end local v0           #gravity:I
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method

.method setInEditorWebTextView(Z)V
    .locals 3
    .parameter "draw"

    .prologue
    const/4 v1, 0x0

    .line 1087
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setWillNotDraw(Z)V

    .line 1088
    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    if-eqz p1, :cond_0

    new-instance v1, Landroid/webkit/WebTextView$BackgroundDrawable;

    iget v0, p0, Landroid/webkit/WebTextView;->mRingInset:I

    invoke-direct {v1, v0}, Landroid/webkit/WebTextView$BackgroundDrawable;-><init>(I)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    return-void

    .line 1087
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1088
    goto :goto_1
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1095
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 1096
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 1098
    return-void
.end method

.method setNodeName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 660
    iput-object p1, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    .line 661
    return-void
.end method

.method setNodePointer(I)V
    .locals 1
    .parameter "ptr"

    .prologue
    .line 1117
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-eq p1, v0, :cond_0

    .line 1118
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 1119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 1121
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 307
    iget v0, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v1, p2

    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v2, p3

    iget v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 309
    return-void
.end method

.method setRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x4000

    .line 1134
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1135
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p1, v2

    .line 1136
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    .line 1137
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 1140
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr p4, v2

    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, needsUpdate:Z
    if-nez v0, :cond_2

    .line 1144
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1155
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1157
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    :cond_1
    :goto_1
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 1163
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 1164
    return-void

    .line 1146
    :cond_2
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v2, p1, :cond_3

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v2, p2, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, p3, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p4, :cond_0

    .line 1148
    :cond_3
    const/4 v1, 0x1

    .line 1149
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1150
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1151
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1152
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1158
    :cond_4
    if-eqz v1, :cond_1

    .line 1159
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setSelectionFromWebKit(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 1171
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1173
    .local v3, text:Landroid/text/Editable;
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1174
    .local v0, length:I
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 1175
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1176
    .local v2, selStart:I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1178
    .local v1, selEnd:I
    iget-boolean v4, p0, Landroid/webkit/WebTextView;->mKeepSelectionOnce:Z

    if-eqz v4, :cond_2

    .line 1179
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mKeepSelectionOnce:Z

    .line 1180
    if-eq v2, v1, :cond_2

    if-ne p1, p2, :cond_2

    .line 1181
    iget-object v4, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2, v1}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_0

    .line 1186
    :cond_2
    iget-boolean v4, p0, Landroid/webkit/WebTextView;->mAcceptJsSelection:Z

    if-nez v4, :cond_3

    if-ne p1, p2, :cond_3

    if-ne v2, v1, :cond_3

    if-eq p1, v2, :cond_3

    .line 1187
    iget-object v4, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2, v1}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_0

    .line 1189
    :cond_3
    if-ne p1, v2, :cond_4

    if-eq p2, v1, :cond_0

    .line 1190
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1191
    invoke-static {v3, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1192
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1193
    iget-object v4, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 1194
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mAcceptJsSelection:Z

    goto :goto_0
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .locals 10
    .parameter "text"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1238
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1239
    .local v0, edit:Landroid/text/Editable;
    iput-object p1, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 1240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1243
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1244
    .local v5, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1245
    .local v4, selEnd:I
    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1246
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v0, v9, v7, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1247
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1250
    .local v2, newLength:I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1251
    .local v3, oldLenght:I
    if-ne v5, v4, :cond_1

    sub-int v7, v2, v3

    if-ltz v7, :cond_1

    .line 1252
    sub-int v7, v2, v3

    add-int/2addr v4, v7

    .line 1253
    sub-int v7, v2, v3

    add-int/2addr v5, v7

    .line 1255
    :cond_1
    if-le v5, v2, :cond_2

    move v5, v2

    .line 1256
    :cond_2
    if-le v4, v2, :cond_3

    move v4, v2

    .line 1257
    :cond_3
    invoke-static {v0, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1259
    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mAcceptJsSelection:Z

    .line 1261
    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v8, v7, :cond_4

    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1264
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v6

    .line 1265
    .local v6, transformationMethod:Landroid/text/method/TransformationMethod;
    if-eqz v6, :cond_4

    instance-of v7, v6, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v7, :cond_4

    .line 1266
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1267
    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1271
    .end local v6           #transformationMethod:Landroid/text/method/TransformationMethod;
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1272
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1275
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1277
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_0
.end method

.method setType(I)V
    .locals 12
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1289
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v8, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    iput p1, p0, Landroid/webkit/WebTextView;->mType:I

    .line 1293
    const/4 v7, 0x1

    .line 1294
    .local v7, single:Z
    const/4 v3, -0x1

    .line 1295
    .local v3, maxLength:I
    const/16 v2, 0xa1

    .line 1297
    .local v2, inputType:I
    const/high16 v1, 0x1200

    .line 1299
    .local v1, imeOptions:I
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateIsSpellcheck()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1300
    const/high16 v8, 0x8

    or-int/2addr v2, v8

    .line 1302
    :cond_2
    if-eq v9, p1, :cond_3

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1304
    const/high16 v8, 0x800

    or-int/2addr v1, v8

    .line 1306
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1354
    or-int/lit8 v1, v1, 0x2

    .line 1357
    :goto_1
    invoke-virtual {p0, v11}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1358
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setThreshold(I)V

    .line 1359
    const/4 v0, 0x0

    .line 1360
    .local v0, autoComplete:Z
    if-eqz v7, :cond_5

    .line 1361
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v9

    iget v10, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1363
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v3

    .line 1364
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateIsAutoComplete()Z

    move-result v0

    .line 1365
    const/4 v8, 0x2

    if-eq p1, v8, :cond_5

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-nez v8, :cond_4

    if-eqz v0, :cond_5

    .line 1366
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v4

    .line 1367
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 1368
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    iget-boolean v10, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    invoke-virtual {v8, v4, v9, v10, v0}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;IZZ)V

    .line 1377
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v11}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1378
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v10, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mAction:I

    .line 1382
    const/16 v5, 0xc

    .line 1383
    .local v5, next_mask:I
    const/4 v6, 0x3

    .line 1384
    .local v6, prev_mask:I
    iget v8, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_7

    iget v8, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_7

    .line 1385
    const-string v8, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {p0, v8}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1395
    :cond_6
    :goto_2
    iput-boolean v7, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1396
    invoke-direct {p0, v3}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1397
    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1398
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1399
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->clearComposingText()V

    .line 1400
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1401
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 1402
    if-nez v0, :cond_0

    .line 1403
    invoke-virtual {p0, v11}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 1308
    .end local v0           #autoComplete:Z
    .end local v5           #next_mask:I
    .end local v6           #prev_mask:I
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 1309
    goto/16 :goto_1

    .line 1311
    :pswitch_1
    const/4 v7, 0x0

    .line 1312
    const v8, 0x2c000

    or-int/2addr v2, v8

    .line 1315
    or-int/lit8 v1, v1, 0x1

    .line 1316
    goto/16 :goto_1

    .line 1318
    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    .line 1319
    or-int/lit8 v1, v1, 0x2

    .line 1320
    goto/16 :goto_1

    .line 1322
    :pswitch_3
    or-int/lit8 v1, v1, 0x3

    .line 1323
    goto/16 :goto_1

    .line 1327
    :pswitch_4
    const/16 v2, 0x20

    .line 1330
    or-int/lit8 v1, v1, 0x2

    .line 1331
    goto/16 :goto_1

    .line 1334
    :pswitch_5
    const/16 v2, 0x3002

    .line 1339
    goto/16 :goto_1

    .line 1342
    :pswitch_6
    const/4 v2, 0x3

    .line 1344
    goto/16 :goto_1

    .line 1349
    :pswitch_7
    const/16 v2, 0x10

    .line 1351
    or-int/lit8 v1, v1, 0x2

    .line 1352
    goto/16 :goto_1

    .line 1387
    .restart local v0       #autoComplete:Z
    .restart local v5       #next_mask:I
    .restart local v6       #prev_mask:I
    :cond_7
    iget v8, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_8

    .line 1388
    const-string v8, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {p0, v8}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 1390
    :cond_8
    iget v8, p0, Landroid/webkit/WebTextView;->mAction:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_6

    .line 1391
    const-string v8, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {p0, v8}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 1306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method updateTextSize()V
    .locals 3

    .prologue
    .line 1220
    const-string/jumbo v1, "updateTextSize should only be called from mWebView, so mWebView should never be null!"

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1224
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 1227
    .local v0, size:F
    const/high16 v1, 0x4120

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v0, v1

    .line 1229
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 1230
    return-void
.end method
