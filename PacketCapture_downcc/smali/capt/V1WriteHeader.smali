.class public final Lcapt/V1WriteHeader;
.super Ljava/lang/Object;
.source "V1Writer.kt"


# instance fields
.field private final HEADER_SIZE:I

.field private contentType:Ljava/lang/String;

.field private flag:I

.field private prettyBlocks:I

.field private prettyLabel:Ljava/lang/String;

.field private prettyOffset:I

.field private prettySize:I

.field private rawDataSize:I

.field private rawFileOffset:I

.field private textBlocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x5c

    iput v0, p0, Lcapt/V1WriteHeader;->HEADER_SIZE:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcapt/V1WriteHeader;->contentType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcapt/V1WriteHeader;->prettyLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFlag()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcapt/V1WriteHeader;->flag:I

    return v0
.end method

.method public final getHEADER_SIZE()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcapt/V1WriteHeader;->HEADER_SIZE:I

    return v0
.end method

.method public final getPrettyOffset()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcapt/V1WriteHeader;->prettyOffset:I

    return v0
.end method

.method public final getRawFileOffset()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcapt/V1WriteHeader;->rawFileOffset:I

    return v0
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcapt/V1WriteHeader;->contentType:Ljava/lang/String;

    return-void
.end method

.method public final setFlag(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 18
    iput p1, p0, Lcapt/V1WriteHeader;->flag:I

    return-void
.end method

.method public final setPrettyBlocks(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 26
    iput p1, p0, Lcapt/V1WriteHeader;->prettyBlocks:I

    return-void
.end method

.method public final setPrettyLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcapt/V1WriteHeader;->prettyLabel:Ljava/lang/String;

    return-void
.end method

.method public final setPrettyOffset(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 25
    iput p1, p0, Lcapt/V1WriteHeader;->prettyOffset:I

    return-void
.end method

.method public final setPrettySize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 24
    iput p1, p0, Lcapt/V1WriteHeader;->prettySize:I

    return-void
.end method

.method public final setRawDataSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 20
    iput p1, p0, Lcapt/V1WriteHeader;->rawDataSize:I

    return-void
.end method

.method public final setRawFileOffset(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 21
    iput p1, p0, Lcapt/V1WriteHeader;->rawFileOffset:I

    return-void
.end method

.method public final setTextBlocks(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 22
    iput p1, p0, Lcapt/V1WriteHeader;->textBlocks:I

    return-void
.end method

.method public final write(Ljava/io/RandomAccessFile;)V
    .locals 2
    .param p1, "w"    # Ljava/io/RandomAccessFile;

    .prologue
    const/16 v1, 0x20

    const-string v0, "w"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lcapt/V1WriteHeader;->flag:I

    invoke-static {p1, v0}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 36
    iget-object v0, p0, Lcapt/V1WriteHeader;->contentType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcapt/V1WriterKt;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;I)V

    .line 37
    iget v0, p0, Lcapt/V1WriteHeader;->rawDataSize:I

    invoke-static {p1, v0}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 38
    iget v0, p0, Lcapt/V1WriteHeader;->rawFileOffset:I

    invoke-static {p1, v0}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 39
    iget v0, p0, Lcapt/V1WriteHeader;->textBlocks:I

    invoke-static {p1, v0}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 40
    iget-object v0, p0, Lcapt/V1WriteHeader;->prettyLabel:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcapt/V1WriterKt;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;I)V

    .line 41
    iget v0, p0, Lcapt/V1WriteHeader;->prettySize:I

    invoke-static {p1, v0}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 42
    iget v0, p0, Lcapt/V1WriteHeader;->prettyOffset:I

    invoke-static {p1, v0}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 43
    iget v0, p0, Lcapt/V1WriteHeader;->prettyBlocks:I

    invoke-static {p1, v0}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 44
    return-void
.end method
