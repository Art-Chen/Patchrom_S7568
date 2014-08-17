.class public Landroid/sec/multiwindow/PreventSplitItem;
.super Ljava/lang/Object;
.source "PreventSplitItem.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mRect:Landroid/graphics/Rect;

.field private mSplit:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Z)V
    .locals 3
    .parameter "rect"
    .parameter "split"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "PreventSplitItem"

    iput-object v0, p0, Landroid/sec/multiwindow/PreventSplitItem;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, "PreventSplitItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreventSplitItem - rect, split : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput-object p1, p0, Landroid/sec/multiwindow/PreventSplitItem;->mRect:Landroid/graphics/Rect;

    .line 16
    iput-boolean p2, p0, Landroid/sec/multiwindow/PreventSplitItem;->mSplit:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Landroid/sec/multiwindow/PreventSplitItem;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSplit()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Landroid/sec/multiwindow/PreventSplitItem;->mSplit:Z

    return v0
.end method
