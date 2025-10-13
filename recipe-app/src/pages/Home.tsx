import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import Layout from '../components/Layout';
import RecipeCard from '../components/RecipeCard';
import { userAPI } from '../api/client';
import type { RecipeSummaryDTO, UserDTO } from '../types';

export default function Home() {
  const navigate = useNavigate();
  const [recipes, setRecipes] = useState<RecipeSummaryDTO[]>([]);
  const [user, setUser] = useState<UserDTO | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [page, setPage] = useState(0);
  const [totalPages, setTotalPages] = useState(0);

  useEffect(() => {
    loadData();
  }, [page]);

  const loadData = async () => {
    setLoading(true);
    setError('');
    try {
      const [profileData, recipesData] = await Promise.all([
        userAPI.getProfile(),
        userAPI.getMyRecipes(page, 12)
      ]);
      
      setUser(profileData);
      setRecipes(recipesData.content);
      setTotalPages(recipesData.totalPages);
    } catch (err: any) {
      setError(err.response?.data?.message || 'Không thể tải dữ liệu');
    } finally {
      setLoading(false);
    }
  };

  return (
    <Layout>
      <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
        {/* Header */}
        <div style={{
          display: 'flex',
          justifyContent: 'space-between',
          alignItems: 'center',
          marginBottom: '2rem'
        }}>
          <div>
            <h2 style={{ margin: 0, color: '#333' }}>
              Xin chào, {user?.username || 'User'}! 👋
            </h2>
            <p style={{ color: '#666', marginTop: '0.5rem' }}>
              Quản lý các công thức nấu ăn của bạn
            </p>
          </div>
          <button
            onClick={() => navigate('/create-recipe')}
            style={{
              padding: '0.75rem 1.5rem',
              backgroundColor: '#28a745',
              color: 'white',
              border: 'none',
              borderRadius: '6px',
              fontSize: '16px',
              fontWeight: '500',
              cursor: 'pointer',
              display: 'flex',
              alignItems: 'center',
              gap: '0.5rem',
              transition: 'background-color 0.2s'
            }}
            onMouseOver={(e) => e.currentTarget.style.backgroundColor = '#218838'}
            onMouseOut={(e) => e.currentTarget.style.backgroundColor = '#28a745'}
          >
            <span style={{ fontSize: '20px' }}>+</span>
            Tạo công thức mới
          </button>
        </div>

        {/* Error Message */}
        {error && (
          <div style={{
            padding: '1rem',
            backgroundColor: '#f8d7da',
            color: '#721c24',
            borderRadius: '6px',
            marginBottom: '1rem'
          }}>
            {error}
          </div>
        )}

        {/* Loading */}
        {loading && (
          <div style={{ textAlign: 'center', padding: '3rem' }}>
            <p style={{ fontSize: '18px', color: '#666' }}>Đang tải...</p>
          </div>
        )}

        {/* Recipes Grid */}
        {!loading && recipes.length > 0 && (
          <>
            <div style={{
              display: 'grid',
              gridTemplateColumns: 'repeat(auto-fill, minmax(300px, 1fr))',
              gap: '1.5rem',
              marginBottom: '2rem'
            }}>
              {recipes.map((recipe) => (
                <RecipeCard key={recipe.id} recipe={recipe} />
              ))}
            </div>

            {/* Pagination */}
            {totalPages > 1 && (
              <div style={{
                display: 'flex',
                justifyContent: 'center',
                gap: '0.5rem',
                marginTop: '2rem'
              }}>
                <button
                  onClick={() => setPage(p => Math.max(0, p - 1))}
                  disabled={page === 0}
                  style={{
                    padding: '0.5rem 1rem',
                    backgroundColor: page === 0 ? '#e9ecef' : '#007bff',
                    color: page === 0 ? '#6c757d' : 'white',
                    border: 'none',
                    borderRadius: '4px',
                    cursor: page === 0 ? 'not-allowed' : 'pointer'
                  }}
                >
                  ← Trước
                </button>
                <span style={{
                  padding: '0.5rem 1rem',
                  display: 'flex',
                  alignItems: 'center',
                  color: '#666'
                }}>
                  Trang {page + 1} / {totalPages}
                </span>
                <button
                  onClick={() => setPage(p => Math.min(totalPages - 1, p + 1))}
                  disabled={page >= totalPages - 1}
                  style={{
                    padding: '0.5rem 1rem',
                    backgroundColor: page >= totalPages - 1 ? '#e9ecef' : '#007bff',
                    color: page >= totalPages - 1 ? '#6c757d' : 'white',
                    border: 'none',
                    borderRadius: '4px',
                    cursor: page >= totalPages - 1 ? 'not-allowed' : 'pointer'
                  }}
                >
                  Sau →
                </button>
              </div>
            )}
          </>
        )}

        {/* Empty State */}
        {!loading && recipes.length === 0 && (
          <div style={{
            textAlign: 'center',
            padding: '4rem 2rem',
            backgroundColor: 'white',
            borderRadius: '8px',
            boxShadow: '0 2px 4px rgba(0,0,0,0.1)'
          }}>
            <p style={{ fontSize: '48px', marginBottom: '1rem' }}>📝</p>
            <h3 style={{ color: '#333', marginBottom: '0.5rem' }}>
              Chưa có công thức nào
            </h3>
            <p style={{ color: '#666', marginBottom: '1.5rem' }}>
              Hãy tạo công thức đầu tiên của bạn!
            </p>
            <button
              onClick={() => navigate('/create-recipe')}
              style={{
                padding: '0.75rem 1.5rem',
                backgroundColor: '#28a745',
                color: 'white',
                border: 'none',
                borderRadius: '6px',
                fontSize: '16px',
                cursor: 'pointer'
              }}
            >
              Tạo công thức ngay
            </button>
          </div>
        )}
      </div>
    </Layout>
  );
}