.class public final Lcapt/ProtobufKt$parseProtobuf$1;
.super Ljava/io/OutputStream;
.source "protobuf.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcapt/ProtobufKt;->parseProtobuf(Ljava/io/InputStream;Lcapt/V1Writer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $v1:Lcapt/V1Writer;


# direct methods
.method constructor <init>(Lcapt/V1Writer;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lcapt/V1Writer;

    .prologue
    .line 77
    iput-object p1, p0, Lcapt/ProtobufKt$parseProtobuf$1;->$v1:Lcapt/V1Writer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 86
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 87
    .local v0, "barr":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 88
    iget-object v1, p0, Lcapt/ProtobufKt$parseProtobuf$1;->$v1:Lcapt/V1Writer;

    invoke-virtual {v1, v0}, Lcapt/V1Writer;->write([B)V

    .line 89
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcapt/ProtobufKt$parseProtobuf$1;->$v1:Lcapt/V1Writer;

    invoke-virtual {v0, p1}, Lcapt/V1Writer;->write([B)V

    goto :goto_0
.end method
