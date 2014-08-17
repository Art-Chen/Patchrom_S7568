.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .parameter "dataArray"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .parameter "i"
    .parameter "j"

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix2f;)V
    .locals 4
    .parameter "src"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/renderscript/Matrix2f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V
    .locals 9
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_1

    const/4 v3, 0x0

    .local v3, ri0:F
    const/4 v4, 0x0

    .local v4, ri1:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v8, :cond_0

    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v2

    .local v2, rhs_ij:F
    invoke-virtual {p1, v1, v6}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    invoke-virtual {p1, v1, v7}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #rhs_ij:F
    :cond_0
    invoke-virtual {p0, v0, v6, v3}, Landroid/renderscript/Matrix2f;->set(IIF)V

    invoke-virtual {p0, v0, v7, v4}, Landroid/renderscript/Matrix2f;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #j:I
    .end local v3           #ri0:F
    .end local v4           #ri1:F
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 5
    .parameter "rot"

    .prologue
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, c:F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .local v1, s:F
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x2

    aput v1, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x3

    aput v0, v2, v3

    return-void
.end method

.method public loadScale(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix2f;)V
    .locals 1
    .parameter "rhs"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .local v0, tmp:Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix2f;->loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->load(Landroid/renderscript/Matrix2f;)V

    return-void
.end method

.method public rotate(F)V
    .locals 1
    .parameter "rot"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .local v0, tmp:Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix2f;->loadRotate(F)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    return-void
.end method

.method public scale(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .local v0, tmp:Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix2f;->loadScale(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public transpose()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v0, v1, v3

    .local v0, temp:F
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v2, v2, v4

    aput v2, v1, v3

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aput v0, v1, v4

    return-void
.end method
