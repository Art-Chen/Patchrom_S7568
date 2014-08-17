.class public Landroid/webkit/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object; = null

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"

.field public static TTSbefore:I


# instance fields
.field public DEBUG:Z

.field final MAX_SPANS:I

.field public TTSbeforeText:Ljava/lang/String;

.field private TTSstart:I

.field TTStext:Ljava/lang/String;

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field protected composingEnd:I

.field protected composingStart:I

.field protected curSelEnd:I

.field protected curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field private mALTKeyIsPressed:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field mBatchEditNesting:I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Landroid/webkit/HtmlComposerInputConnection;->TTSbefore:I

    return-void
.end method

.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 3
    .parameter "targetView"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSstart:I

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    return-void
.end method

.method private isBracketChar(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    const-string v0, "<>{}[]()\u00ab\u00bb"

    .local v0, BRACKET:Ljava/lang/String;
    const-string v1, "<>{}[]()\u00ab\u00bb"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private replaceTextToHtml(Ljava/lang/CharSequence;IZ)V
    .locals 16
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "replaceTextToHtml called here"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "settings "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " text coming   "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, ""

    .local v3, addStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v13, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-ne v13, v14, :cond_3

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    :cond_3
    const/4 v10, 0x0

    .local v10, sp:Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .local v2, a:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .local v4, b:I
    const/4 v13, -0x1

    if-ne v2, v13, :cond_4

    const/4 v13, -0x1

    if-ne v4, v13, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/text/Spanned;

    if-eqz v13, :cond_a

    move-object/from16 v10, p1

    check-cast v10, Landroid/text/Spanned;

    invoke-static {v10}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v6

    .local v6, htmltext:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/webkit/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct/range {p0 .. p1}, Landroid/webkit/HtmlComposerInputConnection;->isBracketChar(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->isRTLText(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p1}, Landroid/webkit/HtmlComposerInputConnection;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v9

    .local v9, selectionType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v14, v0, v1, v15}, Landroid/webkit/HtmlComposerView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;

    move-result-object v8

    .local v8, m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Selection offset value start "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",End:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_c

    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v2, v13

    if-lez p2, :cond_d

    add-int/lit8 v13, v2, -0x1

    add-int v13, v13, p2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v13, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v13, 0x1

    if-ne v13, v9, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    :goto_4
    if-nez p2, :cond_7

    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->MoveCursorRight()V

    .end local v6           #htmltext:Ljava/lang/String;
    .end local v8           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    .end local v9           #selectionType:I
    :cond_7
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_8

    const-string v13, "Predictive addstr"

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz p3, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v12

    .local v12, tmpstr:Ljava/lang/String;
    const-string v13, "Predictive "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "compse "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_9

    const-string v13, "Predictive active "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTTStext "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v5, v13, v14

    .local v5, diff:I
    const/4 v13, 0x1

    if-ne v5, v13, :cond_f

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    :goto_5
    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5           #diff:I
    .end local v12           #tmpstr:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #htmltext:Ljava/lang/String;
    if-eqz p3, :cond_b

    new-instance v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .local v11, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    const/4 v13, 0x0

    iput v13, v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    iput v13, v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v13, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v11           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_b
    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_1

    .restart local v8       #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    .restart local v9       #selectionType:I
    :cond_c
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto/16 :goto_2

    :cond_d
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    sub-int v13, v2, v13

    add-int v13, v13, p2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto/16 :goto_4

    .end local v6           #htmltext:Ljava/lang/String;
    .end local v8           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    .end local v9           #selectionType:I
    .restart local v5       #diff:I
    .restart local v12       #tmpstr:Ljava/lang/String;
    :cond_f
    const/4 v13, -0x1

    if-ne v5, v13, :cond_10

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5           #diff:I
    .end local v12           #tmpstr:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_13

    const-string v13, "Predictive "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v7, v13, v14

    .local v7, len:I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14, v7}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    goto/16 :goto_0

    :cond_14
    const/4 v7, 0x0

    goto :goto_6
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "arg0"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .parameter "correctionInfo"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection commitCorrection return TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitText "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v3, v3, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104070e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104070f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getShowSingleCursorHandlerState()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .parameter "Text"

    .prologue
    const/16 v4, 0xbb

    const/16 v3, 0xab

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, sText:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, sCvtText:Ljava/lang/String;
    const-string v2, "{"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "}"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "{"

    goto :goto_0

    :cond_2
    const-string v2, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "]"

    goto :goto_0

    :cond_3
    const-string v2, "]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "["

    goto :goto_0

    :cond_4
    const-string v2, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, ">"

    goto :goto_0

    :cond_5
    const-string v2, ">"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "<"

    goto :goto_0

    :cond_6
    const-string v2, "("

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, ")"

    goto :goto_0

    :cond_7
    const-string v2, ")"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "("

    goto :goto_0

    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 6
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSurroundingText left "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rgh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v0, ""

    .local v0, chng:Ljava/lang/String;
    if-ge p1, v2, :cond_3

    invoke-virtual {p0, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v3, p1

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v3, :cond_1

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    :cond_1
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\nX+\n+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    if-ge p2, v2, :cond_4

    invoke-virtual {p0, p1, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .local v1, arbOffset:I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, textBeforCursor:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, a:I
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 8
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    const-string v4, "HtmlComposerInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtractedText request.hintMaxChars "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "request.hintMaxLines "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->beginBatchEdit()Z

    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, textBeforCursor:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, textAfetrCursor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v5, ""

    if-ne v4, v5, :cond_3

    :cond_2
    iput v7, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iput v7, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    const/4 v4, -0x1

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    const-string v4, "HtmlComposerInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtractedText outText.selectionStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " outText.selectionEnd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "outText.startOffset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->endBatchEdit()Z

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v4, :cond_4

    const-string v4, "HtmlComposerInputConnection"

    const-string v5, "getExtractedText return without update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4, v7, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto/16 :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "flags"

    .prologue
    const-string v1, "HtmlComposerInputConnection"

    const-string v2, "getSelectedText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .local v0, textSelected:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method getSpanData(Landroid/text/Spanned;)V
    .locals 10
    .parameter "text"

    .prologue
    const/high16 v9, 0x100

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .local v4, spanLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_4

    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .local v2, next:I
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    .local v5, style:[Landroid/text/style/CharacterStyle;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_0

    new-instance v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .local v6, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v6           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_0
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_1

    new-instance v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .restart local v6       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    iput-boolean v8, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v6           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_1
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/SuggestionSpan;

    if-eqz v7, :cond_2

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .local v3, sp:Landroid/text/TextPaint;
    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v7, v3}, Landroid/text/style/SuggestionSpan;->updateDrawState(Landroid/text/TextPaint;)V

    new-instance v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .restart local v6       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    iput-boolean v8, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget v7, v3, Landroid/text/TextPaint;->underlineColor:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->underlineColor:I

    iget v7, v3, Landroid/text/TextPaint;->underlineThickness:F

    iput v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->underlineThickness:F

    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v3           #sp:Landroid/text/TextPaint;
    .end local v6           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    .end local v1           #j:I
    .end local v2           #next:I
    .end local v5           #style:[Landroid/text/style/CharacterStyle;
    :cond_4
    return-void
.end method

.method public getTTSbeforeText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    return-object v0
.end method

.method public getTTStext()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "n"
    .parameter "flags"

    .prologue
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_1

    const-string v4, ""

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    aget-char v1, v0, v2

    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    aput-char v5, v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #chrVal:C
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextAfterCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 11
    .parameter "n"
    .parameter "flags"

    .prologue
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v8, :cond_1

    const-string v6, ""

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v9, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v8, p1, v9}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v6

    .local v6, retText:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr:[C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    aget-char v1, v0, v4

    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    aput-char v8, v0, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #chrVal:C
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .local v5, rText:Ljava/lang/String;
    move-object v6, v5

    .end local v0           #arr:[C
    .end local v4           #i:I
    .end local v5           #rText:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_5

    const-string v6, ""

    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, p1, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-ge v8, v9, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v2, p1, v8

    .local v2, diffLen:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v7, tempString:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .local v3, extCnt:I
    :goto_2
    add-int/lit8 v8, v2, -0x1

    if-ge v3, v8, :cond_6

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    if-le v2, v8, :cond_7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v2           #diffLen:I
    .end local v3           #extCnt:I
    .end local v7           #tempString:Ljava/lang/StringBuilder;
    :cond_8
    iget-boolean v8, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTextBeforeCursor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " n "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flags "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v6, :cond_0

    const-string v6, ""

    goto/16 :goto_0
.end method

.method public isRTLText(Ljava/lang/String;)Z
    .locals 13
    .parameter "sCurStr"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_1
    :try_start_0
    iget-object v10, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v11, 0x3e8

    sget-object v12, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v1

    .local v1, backContent:Ljava/lang/String;
    iget-object v10, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v11, 0x64

    sget-object v12, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v7

    .local v7, fwdContent:Ljava/lang/String;
    if-nez v1, :cond_2

    if-eqz v7, :cond_c

    :cond_2
    if-nez v1, :cond_7

    const-string v1, ""

    :cond_3
    :goto_1
    move-object v2, v1

    .local v2, backNFwdContent:Ljava/lang/String;
    if-eqz v7, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v0, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v0, v2, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .local v0, backBIDI:Ljava/text/Bidi;
    const/4 v5, 0x0

    .local v5, flipRTL:Z
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v5, 0x1

    :cond_5
    if-eqz v7, :cond_6

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, reverseCont:Ljava/lang/String;
    new-instance v3, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .local v3, curBIDI:Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v6, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .local v6, fwdBIDI:Ljava/text/Bidi;
    :goto_2
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v5, 0x1

    .end local v3           #curBIDI:Ljava/text/Bidi;
    .end local v6           #fwdBIDI:Ljava/text/Bidi;
    .end local v9           #reverseCont:Ljava/lang/String;
    :cond_6
    :goto_3
    if-eqz v5, :cond_c

    const/4 v10, 0x1

    goto :goto_0

    .end local v0           #backBIDI:Ljava/text/Bidi;
    .end local v2           #backNFwdContent:Ljava/lang/String;
    .end local v5           #flipRTL:Z
    :cond_7
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .local v8, newLine:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v8           #newLine:I
    .restart local v0       #backBIDI:Ljava/text/Bidi;
    .restart local v2       #backNFwdContent:Ljava/lang/String;
    .restart local v3       #curBIDI:Ljava/text/Bidi;
    .restart local v5       #flipRTL:Z
    .restart local v9       #reverseCont:Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/text/Bidi;

    const/4 v10, -0x1

    invoke-direct {v6, v7, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .restart local v6       #fwdBIDI:Ljava/text/Bidi;
    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    .end local v0           #backBIDI:Ljava/text/Bidi;
    .end local v1           #backContent:Ljava/lang/String;
    .end local v2           #backNFwdContent:Ljava/lang/String;
    .end local v3           #curBIDI:Ljava/text/Bidi;
    .end local v5           #flipRTL:Z
    .end local v6           #fwdBIDI:Ljava/text/Bidi;
    .end local v7           #fwdContent:Ljava/lang/String;
    .end local v9           #reverseCont:Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, exp:Ljava/lang/Exception;
    const-string v10, "HtmlComposerInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TAGVIVEK ERROR IN HTMLComposerIC, Msg= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4           #exp:Ljava/lang/Exception;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, retVal:Z
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 18
    .parameter "editorAction"

    .prologue
    const-string v1, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performEditorAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v4, 0x82

    invoke-virtual {v1, v4}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .local v17, v:Landroid/view/View;
    if-eqz v17, :cond_1

    const/16 v1, 0x82

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .end local v17           #v:Landroid/view/View;
    :cond_2
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v4, 0x21

    invoke-virtual {v1, v4}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .restart local v17       #v:Landroid/view/View;
    if-eqz v17, :cond_3

    const/16 v1, 0x21

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .end local v17           #v:Landroid/view/View;
    :cond_4
    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .local v16, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .end local v16           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, eventTime:J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const-string v9, "HtmlComposerInputConnection"

    const-string v10, "sendKeyEvent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    const/4 v2, 0x1

    .local v2, down:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .local v4, keyCode:I
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendKeyEvent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v9, 0x3d

    if-ne v9, v4, :cond_4

    if-eqz v2, :cond_2

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "    "

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .end local v2           #down:Z
    .end local v4           #keyCode:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2       #down:Z
    .restart local v4       #keyCode:I
    :cond_4
    const/16 v9, 0x42

    if-ne v4, v9, :cond_6

    if-eqz v2, :cond_5

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    const/16 v9, 0x43

    if-ne v4, v9, :cond_11

    if-eqz v2, :cond_e

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v8

    .local v8, tmp:Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, delStr:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v7

    .local v7, textSelected:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v5

    .local v5, prevHtml:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "full text"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "selected  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, ""

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v9, :cond_f

    const/4 v9, 0x0

    :goto_2
    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v10, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v9, v10, :cond_8

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    :cond_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before text  here  1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .local v0, aftHtml:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    move-object v1, v7

    :cond_b
    :goto_3
    const-string v9, ""

    invoke-virtual {p0, v9}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before text  here 2  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v11}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    :cond_d
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .end local v0           #aftHtml:Ljava/lang/String;
    .end local v1           #delStr:Ljava/lang/String;
    .end local v5           #prevHtml:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #textSelected:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_0

    .restart local v1       #delStr:Ljava/lang/String;
    .restart local v5       #prevHtml:Ljava/lang/String;
    .restart local v7       #textSelected:Ljava/lang/String;
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_f
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto/16 :goto_2

    .restart local v0       #aftHtml:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    :cond_10
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v1, "image"

    goto :goto_3

    .end local v0           #aftHtml:Ljava/lang/String;
    .end local v1           #delStr:Ljava/lang/String;
    .end local v5           #prevHtml:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #textSelected:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_11
    const/16 v9, 0x39

    if-ne v4, v9, :cond_12

    if-eqz v2, :cond_14

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .local v3, h:Landroid/os/Handler;
    if-eqz v3, :cond_13

    const/16 v9, 0x3f3

    invoke-virtual {v3, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v3           #h:Landroid/os/Handler;
    :cond_14
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    goto :goto_4
.end method

.method public setComposingRegion(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComposingRegion start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setComposingRegion(II)V

    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setComposingText "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v3, v3, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104070e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104070f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getShowSingleCursorHandlerState()Z

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    goto :goto_1
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x1

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelection start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p2, :cond_3

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    :goto_1
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_4

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    :cond_4
    if-eq p1, p2, :cond_5

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_0

    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0
.end method

.method public setTTSbeforeText(Ljava/lang/String;)V
    .locals 0
    .parameter "tTSbeforeText"

    .prologue
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    return-void
.end method

.method public setTTSstart(I)V
    .locals 0
    .parameter "start"

    .prologue
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSstart:I

    return-void
.end method

.method public setTTStext(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    return-void
.end method

.method public setTargetNull()V
    .locals 2

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    return-void
.end method

.method public updateInputMethodSelection()V
    .locals 6

    .prologue
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->updateIMSelectionToEditor(II)V

    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_1

    const-string v1, "HtmlComposerInputConnection"

    const-string v2, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "HtmlComposerInputConnection"

    const-string v2, "updateInputMethodSelection exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateInputMethodSelectionWithAbsolute()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .local v0, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .locals 6

    .prologue
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .local v1, randm:Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .local v0, randNum:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInputMethodSelectionWithRandom curSelStart curSelEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    return-void
.end method
