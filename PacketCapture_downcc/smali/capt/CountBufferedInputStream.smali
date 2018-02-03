.class public final Lcapt/CountBufferedInputStream;
.super Ljava/io/BufferedInputStream;
.source "CountBufferedInputStream.kt"


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcapt/CountBufferedInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 9
    iget v0, p0, Lcapt/CountBufferedInputStream;->count:I

    iget v1, p0, Lcapt/CountBufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method
