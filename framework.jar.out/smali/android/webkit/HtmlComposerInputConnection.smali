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
    .line 68
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 72
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

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    .line 57
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 58
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 59
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 60
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 71
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSstart:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 78
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    .line 79
    const/16 v0, 0xff

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    .line 86
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    .line 88
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 102
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 103
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    .line 105
    return-void
.end method

.method private isBracketChar(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 1066
    const-string v0, "<>{}[]()\u00ab\u00bb"

    .line 1067
    .local v0, BRACKET:Ljava/lang/String;
    const-string v1, "<>{}[]()\u00ab\u00bb"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    const/4 v1, 0x1

    .line 1070
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
    .line 715
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "replaceTextToHtml called here"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 718
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "settings "

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

    .line 723
    :cond_0
    const-string v3, ""

    .line 725
    .local v3, addStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v13, :cond_2

    .line 900
    :cond_1
    :goto_0
    return-void

    .line 728
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-ne v13, v14, :cond_3

    .line 730
    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 734
    :cond_3
    const/4 v10, 0x0

    .line 736
    .local v10, sp:Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 737
    .local v2, a:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 739
    .local v4, b:I
    const/4 v13, -0x1

    if-ne v2, v13, :cond_4

    const/4 v13, -0x1

    if-ne v4, v13, :cond_4

    .line 740
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-eqz v13, :cond_1

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 742
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 746
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    .line 747
    if-eqz p1, :cond_7

    .line 749
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/text/Spanned;

    if-eqz v13, :cond_a

    move-object/from16 v10, p1

    .line 750
    check-cast v10, Landroid/text/Spanned;

    .line 751
    invoke-static {v10}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v6

    .line 752
    .local v6, htmltext:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/webkit/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    .line 753
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 772
    :goto_1
    invoke-direct/range {p0 .. p1}, Landroid/webkit/HtmlComposerInputConnection;->isBracketChar(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 773
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->isRTLText(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 774
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/HtmlComposerInputConnection;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 778
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v9

    .line 780
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

    .line 783
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

    .line 792
    if-eqz p3, :cond_c

    .line 795
    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 796
    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 804
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v2, v13

    .line 806
    if-lez p2, :cond_d

    .line 807
    add-int/lit8 v13, v2, -0x1

    add-int v13, v13, p2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 820
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v13, :cond_6

    .line 821
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 823
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 826
    const/4 v13, 0x1

    if-ne v13, v9, :cond_e

    .line 827
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 832
    :goto_4
    if-nez p2, :cond_7

    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    .line 833
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->MoveCursorRight()V

    .line 836
    .end local v6           #htmltext:Ljava/lang/String;
    .end local v8           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    .end local v9           #selectionType:I
    :cond_7
    if-eqz v3, :cond_1

    .line 838
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_8

    .line 839
    const-string v13, "Predictive addstr"

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_8
    if-eqz p3, :cond_12

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v12

    .line 845
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

    .line 847
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_9

    .line 848
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

    .line 853
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v5, v13, v14

    .line 854
    .local v5, diff:I
    const/4 v13, 0x1

    if-ne v5, v13, :cond_f

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 856
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 857
    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    .line 874
    :goto_5
    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 875
    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 756
    .end local v5           #diff:I
    .end local v12           #tmpstr:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 757
    .restart local v6       #htmltext:Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 758
    new-instance v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 759
    .local v11, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    const/4 v13, 0x0

    iput v13, v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 760
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    iput v13, v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 761
    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 762
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v13, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v11           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_b
    move-object/from16 v3, p1

    .line 765
    check-cast v3, Ljava/lang/String;

    goto/16 :goto_1

    .line 800
    .restart local v8       #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    .restart local v9       #selectionType:I
    :cond_c
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 801
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto/16 :goto_2

    .line 809
    :cond_d
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    sub-int v13, v2, v13

    add-int v13, v13, p2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto/16 :goto_3

    .line 829
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto/16 :goto_4

    .line 860
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

    .line 862
    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    goto/16 :goto_5

    .line 869
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    goto/16 :goto_5

    .line 877
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 881
    .end local v5           #diff:I
    .end local v12           #tmpstr:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v13, :cond_13

    .line 882
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

    .line 885
    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v7, v13, v14

    .line 887
    .local v7, len:I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_14

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    .line 895
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14, v7}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    goto/16 :goto_0

    .line 893
    :cond_14
    const/4 v7, 0x0

    goto :goto_6
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 191
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 192
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 193
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

    .line 194
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 198
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 203
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .parameter "correctionInfo"

    .prologue
    .line 109
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection commitCorrection return TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
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

    .line 208
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 209
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

    .line 212
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v2, :cond_1

    .line 228
    :goto_0
    return v0

    .line 213
    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v3, v3, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-ne v2, v3, :cond_2

    .line 214
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

    .line 219
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getShowSingleCursorHandlerState()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 220
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 223
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 224
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 226
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .parameter "Text"

    .prologue
    const/16 v4, 0xbb

    const/16 v3, 0xab

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, sText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1076
    .local v0, sCvtText:Ljava/lang/String;
    const-string/jumbo v2, "{"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1077
    const-string/jumbo v0, "}"

    .line 1097
    :cond_0
    :goto_0
    return-object v0

    .line 1078
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1079
    const-string/jumbo v0, "{"

    goto :goto_0

    .line 1080
    :cond_2
    const-string v2, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1081
    const-string v0, "]"

    goto :goto_0

    .line 1082
    :cond_3
    const-string v2, "]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1083
    const-string v0, "["

    goto :goto_0

    .line 1084
    :cond_4
    const-string v2, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1085
    const-string v0, ">"

    goto :goto_0

    .line 1086
    :cond_5
    const-string v2, ">"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1087
    const-string v0, "<"

    goto :goto_0

    .line 1088
    :cond_6
    const-string v2, "("

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1089
    const-string v0, ")"

    goto :goto_0

    .line 1090
    :cond_7
    const-string v2, ")"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1091
    const-string v0, "("

    goto :goto_0

    .line 1092
    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1093
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1094
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1095
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

    .line 232
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

    .line 233
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v3, :cond_0

    .line 262
    :goto_0
    return v1

    .line 236
    :cond_0
    const-string v0, ""

    .line 237
    .local v0, chng:Ljava/lang/String;
    if-ge p1, v2, :cond_3

    .line 238
    invoke-virtual {p0, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    .line 246
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v3, p1

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 247
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v3, :cond_1

    .line 248
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 250
    :cond_1
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 251
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 252
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 255
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

    .line 257
    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    :cond_2
    move v1, v2

    .line 262
    goto :goto_0

    .line 239
    :cond_3
    if-ge p2, v2, :cond_4

    .line 240
    invoke-virtual {p0, p1, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 242
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
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 267
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

    .line 268
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 269
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    .line 274
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

    .line 275
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 276
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    .line 281
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x3

    .line 283
    .local v1, arbOffset:I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, textBeforCursor:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 286
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

    .line 291
    const-string v4, "HtmlComposerInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtractedText request.hintMaxChars "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "request.hintMaxLines "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 324
    :cond_0
    :goto_0
    return-object v1

    .line 294
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->beginBatchEdit()Z

    .line 295
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 296
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, textBeforCursor:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
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

    .line 301
    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v5, ""

    if-ne v4, v5, :cond_3

    .line 302
    :cond_2
    iput v7, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 303
    iput v7, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 304
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 305
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 307
    const/4 v4, -0x1

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 311
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

    const-string/jumbo v6, "outText.startOffset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->endBatchEdit()Z

    .line 315
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v4, :cond_4

    .line 316
    const-string v4, "HtmlComposerInputConnection"

    const-string v5, "getExtractedText return without update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 321
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4, v7, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto/16 :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "flags"

    .prologue
    .line 328
    const-string v1, "HtmlComposerInputConnection"

    const-string v2, "getSelectedText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 331
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .line 331
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

    .line 668
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 669
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 671
    .local v4, spanLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 672
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 673
    .local v2, next:I
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    .line 675
    .local v5, style:[Landroid/text/style/CharacterStyle;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 676
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_0

    .line 677
    new-instance v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 678
    .local v6, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 679
    iput v2, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 685
    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    .line 686
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 687
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v6           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_0
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_1

    .line 691
    new-instance v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 692
    .restart local v6       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 693
    iput v2, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 694
    iput-boolean v8, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 695
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 698
    .end local v6           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_1
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/SuggestionSpan;

    if-eqz v7, :cond_2

    .line 699
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 700
    .local v3, sp:Landroid/text/TextPaint;
    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v7, v3}, Landroid/text/style/SuggestionSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 702
    new-instance v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 703
    .restart local v6       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 704
    iput v2, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 705
    iput-boolean v8, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 706
    iget v7, v3, Landroid/text/TextPaint;->underlineColor:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->underlineColor:I

    .line 707
    iget v7, v3, Landroid/text/TextPaint;->underlineThickness:F

    iput v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->underlineThickness:F

    .line 708
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 675
    .end local v3           #sp:Landroid/text/TextPaint;
    .end local v6           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 671
    :cond_3
    move v0, v2

    goto :goto_0

    .line 712
    .end local v1           #j:I
    .end local v2           #next:I
    .end local v5           #style:[Landroid/text/style/CharacterStyle;
    :cond_4
    return-void
.end method

.method public getTTSbeforeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    return-object v0
.end method

.method public getTTStext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 336
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_1

    const-string v4, ""

    .line 354
    :cond_0
    :goto_0
    return-object v4

    .line 337
    :cond_1
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 339
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 340
    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 341
    aget-char v1, v0, v2

    .line 342
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 343
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 340
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    .end local v1           #chrVal:C
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 347
    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .line 350
    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 351
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

    .line 354
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
    .line 358
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v8, :cond_1

    const-string v6, ""

    .line 388
    :cond_0
    :goto_0
    return-object v6

    .line 359
    :cond_1
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v9, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v8, p1, v9}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, retText:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 361
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 362
    .local v0, arr:[C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 363
    aget-char v1, v0, v4

    .line 364
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 365
    const/16 v8, 0x20

    aput-char v8, v0, v4

    .line 362
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 368
    .end local v1           #chrVal:C
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .line 369
    .local v5, rText:Ljava/lang/String;
    move-object v6, v5

    .line 371
    .end local v0           #arr:[C
    .end local v4           #i:I
    .end local v5           #rText:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_5

    const-string v6, ""

    .line 372
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, p1, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-ge v8, v9, :cond_8

    .line 373
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v2, p1, v8

    .line 374
    .local v2, diffLen:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .local v7, tempString:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/4 v3, 0x1

    .local v3, extCnt:I
    :goto_2
    add-int/lit8 v8, v2, -0x1

    if-ge v3, v8, :cond_6

    .line 377
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 379
    :cond_6
    const/4 v8, 0x1

    if-le v2, v8, :cond_7

    .line 380
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
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

    .line 384
    .end local v2           #diffLen:I
    .end local v3           #extCnt:I
    .end local v7           #tempString:Ljava/lang/StringBuilder;
    :cond_8
    iget-boolean v8, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v8, :cond_9

    .line 385
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

    .line 388
    :cond_9
    if-nez v6, :cond_0

    const-string v6, ""

    goto/16 :goto_0
.end method

.method public isRTLText(Ljava/lang/String;)Z
    .locals 13
    .parameter "sCurStr"

    .prologue
    .line 988
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    .line 989
    :cond_0
    const/4 v10, 0x0

    .line 1059
    :goto_0
    return v10

    .line 992
    :cond_1
    :try_start_0
    iget-object v10, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v11, 0x3e8

    sget-object v12, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, backContent:Ljava/lang/String;
    iget-object v10, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v11, 0x64

    sget-object v12, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v7

    .line 994
    .local v7, fwdContent:Ljava/lang/String;
    if-nez v1, :cond_2

    if-eqz v7, :cond_c

    .line 995
    :cond_2
    if-nez v1, :cond_7

    .line 996
    const-string v1, ""

    .line 1003
    :cond_3
    :goto_1
    move-object v2, v1

    .line 1004
    .local v2, backNFwdContent:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 1005
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1007
    :cond_4
    new-instance v0, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v0, v2, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1008
    .local v0, backBIDI:Ljava/text/Bidi;
    const/4 v5, 0x0

    .line 1009
    .local v5, flipRTL:Z
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1010
    const/4 v5, 0x1

    .line 1013
    :cond_5
    if-eqz v7, :cond_6

    .line 1014
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1016
    .local v9, reverseCont:Ljava/lang/String;
    new-instance v3, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1019
    .local v3, curBIDI:Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1020
    new-instance v6, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1025
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

    .line 1030
    const/4 v5, 0x1

    .line 1049
    .end local v3           #curBIDI:Ljava/text/Bidi;
    .end local v6           #fwdBIDI:Ljava/text/Bidi;
    .end local v9           #reverseCont:Ljava/lang/String;
    :cond_6
    :goto_3
    if-eqz v5, :cond_c

    .line 1050
    const/4 v10, 0x1

    goto :goto_0

    .line 998
    .end local v0           #backBIDI:Ljava/text/Bidi;
    .end local v2           #backNFwdContent:Ljava/lang/String;
    .end local v5           #flipRTL:Z
    :cond_7
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 999
    .local v8, newLine:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 1000
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1022
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

    .line 1031
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

    .line 1035
    const/4 v5, 0x0

    goto :goto_3

    .line 1036
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

    .line 1040
    const/4 v5, 0x0

    goto :goto_3

    .line 1041
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

    .line 1045
    const/4 v5, 0x1

    goto :goto_3

    .line 1054
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

    .line 1055
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

    .line 1056
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1059
    .end local v4           #exp:Ljava/lang/Exception;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 392
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, retVal:Z
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    .line 400
    :goto_1
    return v0

    .line 394
    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 398
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 399
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 18
    .parameter "editorAction"

    .prologue
    .line 407
    const-string v1, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performEditorAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 463
    :goto_0
    return v1

    .line 416
    :cond_0
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v4, 0x82

    invoke-virtual {v1, v4}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .line 419
    .local v17, v:Landroid/view/View;
    if-eqz v17, :cond_1

    .line 420
    const/16 v1, 0x82

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 427
    .end local v17           #v:Landroid/view/View;
    :cond_2
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v4, 0x21

    invoke-virtual {v1, v4}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .line 429
    .restart local v17       #v:Landroid/view/View;
    if-eqz v17, :cond_3

    .line 430
    const/16 v1, 0x21

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 431
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 437
    .end local v17           #v:Landroid/view/View;
    :cond_4
    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 438
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 439
    .local v16, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 442
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 445
    .end local v16           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 446
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

    .line 451
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

    .line 458
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 459
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 463
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 467
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 120
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 121
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 122
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 125
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 476
    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    .line 634
    :goto_0
    return v9

    .line 479
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    const/4 v2, 0x1

    .line 480
    .local v2, down:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 482
    .local v4, keyCode:I
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 483
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    const/16 v9, 0x3d

    if-ne v9, v4, :cond_4

    .line 513
    if-eqz v2, :cond_2

    .line 514
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "    "

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 516
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 518
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 479
    .end local v2           #down:Z
    .end local v4           #keyCode:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 520
    .restart local v2       #down:Z
    .restart local v4       #keyCode:I
    :cond_4
    const/16 v9, 0x42

    if-ne v4, v9, :cond_6

    .line 521
    if-eqz v2, :cond_5

    .line 522
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 523
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 525
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 526
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 527
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 528
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 530
    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 532
    :cond_6
    const/16 v9, 0x43

    if-ne v4, v9, :cond_11

    .line 533
    if-eqz v2, :cond_e

    .line 535
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, tmp:Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    .local v1, delStr:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v7

    .line 538
    .local v7, textSelected:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, prevHtml:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 541
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "full text"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "selected  "

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

    .line 546
    :cond_7
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 549
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, ""

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 550
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 551
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v9, :cond_f

    const/4 v9, 0x0

    :goto_2
    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 552
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 553
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 554
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 555
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v10, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v9, v10, :cond_8

    .line 556
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 558
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 559
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 561
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 562
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

    .line 565
    :cond_9
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 567
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v6

    .line 568
    .local v6, s:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, aftHtml:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_a

    .line 572
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

    .line 573
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

    .line 578
    :cond_a
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 581
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 583
    move-object v1, v7

    .line 589
    :cond_b
    :goto_3
    const-string v9, ""

    invoke-virtual {p0, v9}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 592
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_c

    .line 593
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

    .line 597
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 598
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    .line 603
    :cond_d
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 605
    .end local v0           #aftHtml:Ljava/lang/String;
    .end local v1           #delStr:Ljava/lang/String;
    .end local v5           #prevHtml:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #textSelected:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 551
    .restart local v1       #delStr:Ljava/lang/String;
    .restart local v5       #prevHtml:Ljava/lang/String;
    .restart local v7       #textSelected:Ljava/lang/String;
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_f
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto/16 :goto_2

    .line 585
    .restart local v0       #aftHtml:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    :cond_10
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 587
    const-string v1, "image"

    goto :goto_3

    .line 606
    .end local v0           #aftHtml:Ljava/lang/String;
    .end local v1           #delStr:Ljava/lang/String;
    .end local v5           #prevHtml:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #textSelected:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_11
    const/16 v9, 0x39

    if-ne v4, v9, :cond_12

    .line 607
    if-eqz v2, :cond_14

    .line 608
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    .line 625
    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 626
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 627
    .local v3, h:Landroid/os/Handler;
    if-eqz v3, :cond_13

    .line 629
    const/16 v9, 0x3f3

    invoke-virtual {v3, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 634
    :cond_13
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 610
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
    .line 931
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComposingRegion start"

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

    .line 932
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 937
    :goto_0
    return v0

    .line 933
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setComposingRegion(II)V

    .line 934
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 935
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 936
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 937
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

    .line 638
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 640
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 641
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setComposingText "

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

    .line 644
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    .line 663
    :cond_1
    :goto_0
    return v0

    .line 645
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v3, v3, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-ne v2, v3, :cond_3

    .line 646
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

    .line 651
    :cond_3
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getShowSingleCursorHandlerState()Z

    move-result v2

    if-ne v1, v2, :cond_4

    .line 652
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 655
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 656
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 658
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 659
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    :goto_1
    move v0, v1

    .line 663
    goto :goto_0

    .line 661
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

    .line 941
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelection start "

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

    .line 942
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 973
    :cond_0
    :goto_0
    return v0

    .line 943
    :cond_1
    if-ne p1, p2, :cond_3

    .line 944
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 945
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    .line 951
    :goto_1
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 952
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 953
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 947
    :cond_2
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 948
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    goto :goto_1

    .line 955
    :cond_3
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_4

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_4

    .line 956
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 959
    :cond_4
    if-eq p1, p2, :cond_5

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    .line 960
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 962
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 967
    :cond_5
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_0

    .line 968
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 969
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 970
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0
.end method

.method public setTTSbeforeText(Ljava/lang/String;)V
    .locals 0
    .parameter "tTSbeforeText"

    .prologue
    .line 926
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    .line 927
    return-void
.end method

.method public setTTSstart(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 916
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSstart:I

    .line 918
    return-void
.end method

.method public setTTStext(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 911
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    .line 913
    return-void
.end method

.method public setTargetNull()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 116
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 117
    return-void
.end method

.method public updateInputMethodSelection()V
    .locals 6

    .prologue
    .line 144
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->updateIMSelectionToEditor(II)V

    .line 148
    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_1

    .line 150
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 154
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 156
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

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

    .line 158
    :cond_2
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "updateInputMethodSelection exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateInputMethodSelectionWithAbsolute()V
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 165
    .local v0, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 166
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 167
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd "

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

    .line 168
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 169
    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .locals 6

    .prologue
    .line 172
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 173
    .local v1, randm:Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 174
    .local v0, randNum:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 175
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 176
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 177
    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateInputMethodSelectionWithRandom curSelStart curSelEnd "

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

    .line 178
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 179
    return-void
.end method
