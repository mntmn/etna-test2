# Depth Buffer / Discard Test

This test draws two triangles partly obscuring each other using the depth buffer. The fragment shader has a discard operation that makes a slot in the triangle transparent. On radeon, we see that the part of the obscured triangle correctly appears in the slot. On GC7000L with etnaviv, it does not appear. Setting ```ETNA_MESA_DEBUG=no_early_z``` does not change the behaviour.

Compile with ```./build.sh```

Run with ```./raw-opengl```

## Correct output from radeon

[!radeon](images/correct-radeon.png)

## Incorrect output from etnaviv

[!etnaviv gc7000l](images/incorrect-etnaviv.png)
