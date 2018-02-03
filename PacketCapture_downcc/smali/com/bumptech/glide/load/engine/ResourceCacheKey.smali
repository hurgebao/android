.class final Lcom/bumptech/glide/load/engine/ResourceCacheKey;
.super Ljava/lang/Object;
.source "ResourceCacheKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final RESOURCE_CLASS_BYTES:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Ljava/lang/Class",
            "<*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final decodedResourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final height:I

.field private final options:Lcom/bumptech/glide/load/Options;

.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final sourceKey:Lcom/bumptech/glide/load/Key;

.field private final transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->RESOURCE_CLASS_BYTES:Lcom/bumptech/glide/util/LruCache;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V
    .locals 0
    .param p1, "sourceKey"    # Lcom/bumptech/glide/load/Key;
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p7, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/Options;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p5, "appliedTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<*>;"
    .local p6, "decodedResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 28
    iput p3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->width:I

    .line 29
    iput p4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->height:I

    .line 30
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 31
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    .line 32
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->options:Lcom/bumptech/glide/load/Options;

    .line 33
    return-void
.end method

.method private getResourceClassBytes()[B
    .locals 3

    .prologue
    .line 78
    sget-object v1, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->RESOURCE_CLASS_BYTES:Lcom/bumptech/glide/util/LruCache;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 79
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 81
    sget-object v1, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->RESOURCE_CLASS_BYTES:Lcom/bumptech/glide/util/LruCache;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 37
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 38
    check-cast v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 39
    .local v0, "other":Lcom/bumptech/glide/load/engine/ResourceCacheKey;
    iget v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->height:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->height:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->width:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->width:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 40
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 42
    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 43
    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->options:Lcom/bumptech/glide/load/Options;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->options:Lcom/bumptech/glide/load/Options;

    .line 44
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/Options;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 46
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/ResourceCacheKey;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v0

    .line 52
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 53
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->width:I

    add-int v0, v1, v2

    .line 54
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->height:I

    add-int v0, v1, v2

    .line 55
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_0

    .line 56
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Transformation;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 58
    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 59
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/Options;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 60
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .prologue
    .line 66
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->width:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->height:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 67
    .local v0, "dimensions":[B
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 68
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 69
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 70
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Transformation;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/Options;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 74
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;->getResourceClassBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    return-void
.end method
