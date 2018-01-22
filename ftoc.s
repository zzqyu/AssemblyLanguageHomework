.globl c

c:
	movq %rdi, %rdx /*long a = x;*/
	subq $32, %rdx /* a-=32;*/
	imulq $5, %rdx /* a*=5;*/
	
	movq %rdx, %rax /*ret = a*/
	movq $9, %rdi /*long b = 9 */
	cqto
	idivq %rdi /* ret/=b */
	ret
