.globl f

f:
	imulq %rdi, %rdi /* pow(x,2) */
	imulq %rsi, %rsi /* pow(y,2) */
	imulq %rdx, %rdx /* pow(z,2) */
	movq %rdi, %rcx
	addq %rsi, %rcx
	movq %rdx, %rax /* ret = z^2 */
	subq %rcx, %rax /* ret -= x^2 */ /* ret -= y^2 */
	ret
